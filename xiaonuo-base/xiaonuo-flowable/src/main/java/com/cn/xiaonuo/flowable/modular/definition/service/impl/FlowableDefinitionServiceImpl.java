package com.cn.xiaonuo.flowable.modular.definition.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.log.Log;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cn.xiaonuo.core.context.constant.ConstantContextHolder;
import com.cn.xiaonuo.core.enums.CommonStatusEnum;
import com.cn.xiaonuo.core.exception.DemoException;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import com.cn.xiaonuo.flowable.modular.definition.enums.FlowableDefinitionExceptionEnum;
import com.cn.xiaonuo.flowable.modular.definition.factory.FlowableDefinitionFactory;
import com.cn.xiaonuo.flowable.modular.definition.param.FlowableDefinitionParam;
import com.cn.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import com.cn.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;
import com.cn.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import com.cn.xiaonuo.flowable.modular.event.service.FlowableEventService;
import com.cn.xiaonuo.flowable.modular.form.service.FlowableFormService;
import com.cn.xiaonuo.flowable.modular.option.service.FlowableOptionService;
import com.cn.xiaonuo.flowable.modular.shortcut.service.FlowableShortcutService;
import com.cn.xiaonuo.flowable.modular.user.factory.FlowableUserFactory;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.flowable.bpmn.model.Process;
import org.flowable.bpmn.model.*;
import org.flowable.editor.language.json.converter.BpmnJsonConverter;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.impl.bpmn.behavior.ParallelMultiInstanceBehavior;
import org.flowable.engine.impl.bpmn.behavior.SequentialMultiInstanceBehavior;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.DeploymentBuilder;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.repository.ProcessDefinitionQuery;
import org.flowable.ui.common.security.SecurityUtils;
import org.flowable.ui.common.service.exception.NotFoundException;
import org.flowable.ui.modeler.domain.AbstractModel;
import org.flowable.ui.modeler.domain.Model;
import org.flowable.ui.modeler.model.ModelRepresentation;
import org.flowable.ui.modeler.service.BpmnDisplayJsonConverter;
import org.flowable.ui.modeler.serviceapi.ModelService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/**
 * 流程定义service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/14 19:26
 */
@Service
public class FlowableDefinitionServiceImpl implements FlowableDefinitionService {

    /**
     * 模型资源后缀
     */
    private static final String MODEL_BPMN_SUFFIX = ".bpmn20.xml";

    /**
     * 启动节点默认启动人标志
     */
    private static final String INITIATOR = "INITIATOR";

    /**
     * 用户任务节点流程发起人默认标志
     */
    private static final String SYMBOL_INITIATOR = "$INITIATOR";

    /**
     * 部署时需替换的用户任务节点流程发起人变量标志
     */
    private static final String DOUBLE_SYMBOL_INITIATOR = "${INITIATOR}";

    private static final Log log = Log.get();

    @Resource
    private RepositoryService repositoryService;

    @Resource
    private ModelService modelService;

    @Resource
    private BpmnDisplayJsonConverter bpmnDisplayJsonConverter;

    @Resource
    private FlowableOptionService flowableOptionService;

    @Resource
    private FlowableButtonService flowableButtonService;

    @Resource
    private FlowableEventService flowableEventService;

    @Resource
    private FlowableShortcutService flowableShortcutService;

    @Resource(name = "xiaoNuoFlowableFormService")
    private FlowableFormService flowableFormService;

    @Override
    public PageResult<FlowableDefinitionResult> page(FlowableDefinitionParam flowableDefinitionParam) {
        ProcessDefinitionQuery processDefinitionQuery = repositoryService.createProcessDefinitionQuery();
        if (ObjectUtil.isNotNull(flowableDefinitionParam)) {
            //根据key模糊查询
            if (ObjectUtil.isNotEmpty(flowableDefinitionParam.getKey())) {
                processDefinitionQuery.processDefinitionKeyLike(flowableDefinitionParam.getKey());
            }
            //根据名称模糊查询
            if (ObjectUtil.isNotEmpty(flowableDefinitionParam.getName())) {
                processDefinitionQuery.processDefinitionNameLike(flowableDefinitionParam.getName());
            }
            //根据分类查询
            if (ObjectUtil.isNotEmpty(flowableDefinitionParam.getCategory())) {
                processDefinitionQuery.processDefinitionCategory(flowableDefinitionParam.getCategory());
            }
            //根据挂起状态查询
            if (flowableDefinitionParam.getSuspended()) {
                processDefinitionQuery.suspended();
            }
            //默认查询最新版本
            if (flowableDefinitionParam.getLastedVersion()) {
                processDefinitionQuery.latestVersion();
            }
        }
        Page<FlowableDefinitionResult> defaultPage = PageFactory.defaultPage();
        long current = defaultPage.getCurrent();
        long size = defaultPage.getSize();
        List<ProcessDefinition> processDefinitionList = processDefinitionQuery
                .listPage(Convert.toInt((current - 1) * size), Convert.toInt(size));
        defaultPage.setTotal(processDefinitionQuery.count());
        return FlowableDefinitionFactory.pageResult(processDefinitionList, defaultPage);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deploy(FlowableDefinitionParam flowableDefinitionParam) {

        Boolean demoEnvFlag = ConstantContextHolder.getDemoEnvFlag();
        if (demoEnvFlag) {
            throw new DemoException();
        }

        //此model为设计器model，非act_re_model
        String modelId = flowableDefinitionParam.getModelId();

        //流程分类
        String category = flowableDefinitionParam.getCategory();
        //流程模型
        org.flowable.ui.modeler.domain.Model designModel;
        try {
            //获取流程模型
            designModel = modelService.getModel(modelId);
        } catch (NotFoundException e) {
            //捕获异常该流程模型不存在
            throw new ServiceException(FlowableDefinitionExceptionEnum.MODEL_NOT_EXIST);
        }

        //获取bpmnModel
        BpmnModel bpmnModel = modelService.getBpmnModel(designModel);

        //下面这段代码是用于修复流程发起人参数，关于这个问题详见https://github.com/flowable/flowable-engine/issues/534
        //关于initiator作用以及使用见http://www.shareniu.com/article/191.htm
        bpmnModel.getMainProcess().getFlowElements().forEach(flowElement -> {
            //遍历节点，若为开始事件，则设置INITIATOR
            if (flowElement instanceof StartEvent) {
                StartEvent startEvent = (StartEvent) flowElement;
                startEvent.setInitiator(INITIATOR);
            }
            //遍历节点，若任务节点的待办人为$INITIATOR（流程引擎默认的标识，不能用于设置流程启动人参数，需替换为${INITIATOR}）
            if (flowElement instanceof UserTask) {
                UserTask userTask = (UserTask) flowElement;
                String assignee = userTask.getAssignee();
                if (ObjectUtil.isNotEmpty(assignee)) {
                    //若任务节点的待办人为$INITIATOR则替换为${INITIATOR}
                    if (SYMBOL_INITIATOR.equals(assignee)) {
                        userTask.setAssignee(DOUBLE_SYMBOL_INITIATOR);
                    }
                }
            }
        });

        if (ObjectUtil.isEmpty(bpmnModel)) {
            //模型资源为空，则抛异常该流程模型无资源
            throw new ServiceException(FlowableDefinitionExceptionEnum.MODEL_HAS_NO_RESOURCE);
        }

        //定义一个部署构造器
        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment();
        //流程命名与模型相同
        deploymentBuilder.name(designModel.getName());
        //构造部署的流程资源名称
        String deploymentName = designModel.getName() + MODEL_BPMN_SUFFIX;
        //设置流程资源
        deploymentBuilder.addBpmnModel(deploymentName, bpmnModel);
        //设置流程分类
        deploymentBuilder.category(category);
        //部署
        try {
            Deployment deployment = deploymentBuilder.deploy();
            String deploymentId = deployment.getId();
            //部署后根据deploymentId查询到processDefinition，设置分类
            ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery()
                    .deploymentId(deploymentId).singleResult();
            repositoryService.setProcessDefinitionCategory(processDefinition.getId(), category);

            //部署后自动插入一条流程选项设置
            flowableOptionService.addByProcessDefinition(processDefinition);
        } catch (Exception e) {
            log.error(">>> 流程部署失败，具体信息为：{}", e.getMessage());
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEPLOYMENT_ERROR);
        }

    }

    @Override
    public void export(FlowableDefinitionParam flowableDefinitionParam, HttpServletResponse response) {
        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();

        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);

        //根据流程定义获取deployment
        String deploymentId = processDefinition.getDeploymentId();
        Deployment deployment = repositoryService.createDeploymentQuery()
                .deploymentId(deploymentId).singleResult();
        if (ObjectUtil.isEmpty(deployment)) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEPLOYMENT_NOT_EXIST);
        }

        //获取资源名称
        String resourceName = processDefinition.getResourceName();
        List<String> resourceList = repositoryService.getDeploymentResourceNames(deploymentId);

        //遍历资源名称集合，匹配到则导出
        if (resourceList.contains(resourceName)) {
            try {
                final InputStream resourceStream = repositoryService.getResourceAsStream(deploymentId, resourceName);
                byte[] bytes = IoUtil.readBytes(resourceStream);
                response.reset();
                response.setHeader("Content-Disposition", "attachment; filename=\"" + URLEncoder.encode(resourceName, "UTF-8") + "\"");
                response.addHeader("Content-Length", "" + bytes.length);
                response.setContentType("application/octet-stream;charset=UTF-8");
                IoUtil.write(response.getOutputStream(), true, bytes);
            } catch (Exception e) {
                log.error(">>> 流程导出失败，流读取错误：{}", e.getMessage());
                throw new ServiceException(FlowableDefinitionExceptionEnum.RESOURCE_EXPORT_ERROR);
            }
        } else {
            log.error(">>> 流程导出失败，无该资源文件名称");
            throw new ServiceException(FlowableDefinitionExceptionEnum.RESOURCE_EXPORT_ERROR);
        }
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void mapping(FlowableDefinitionParam flowableDefinitionParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();

        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();

        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);

        //根据流程定义获取deployment
        String deploymentId = processDefinition.getDeploymentId();
        Deployment deployment = repositoryService.createDeploymentQuery().deploymentId(deploymentId).singleResult();
        if (ObjectUtil.isEmpty(deployment)) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEPLOYMENT_NOT_EXIST);
        }

        //获取bpmnModel并转为modelNode
        BpmnModel bpmnModel = repositoryService.getBpmnModel(id);

        ObjectNode modelNode = new BpmnJsonConverter().convertToJson(bpmnModel);

        //构造模型
        ModelRepresentation model = new ModelRepresentation();
        model.setKey(processDefinition.getKey());
        model.setName(processDefinition.getName());
        model.setDescription(processDefinition.getDescription());
        model.setModelType(AbstractModel.MODEL_TYPE_BPMN);
        //创建模型
        modelService.createModel(model, modelNode.toString(), SecurityUtils.getCurrentUserObject());
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void activeOrSuspend(FlowableDefinitionParam flowableDefinitionParam, boolean isSuspend) {
        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();
        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);

        boolean suspended = processDefinition.isSuspended();

        //如果要挂起且已经是挂起状态
        if (suspended && isSuspend) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEFINITION_SUSPEND);
        }

        //如果要激活且已经是激活状态
        if (!suspended && !isSuspend) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEFINITION_ACTIVE);
        }
        if (isSuspend) {
            //挂起
            repositoryService.suspendProcessDefinitionById(id);
            //修改对应的入口状态
            flowableShortcutService.changeStatus(id, CommonStatusEnum.DISABLE.getCode());
        } else {
            //激活
            repositoryService.activateProcessDefinitionById(id);
            //修改对应的入口状态
            flowableShortcutService.changeStatus(id, CommonStatusEnum.ENABLE.getCode());
        }
    }

    @Override
    public JsonNode trace(FlowableDefinitionParam flowableDefinitionParam) {
        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();
        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);

        //根据流程定义获取deployment
        String deploymentId = processDefinition.getDeploymentId();
        Deployment deployment = repositoryService.createDeploymentQuery().deploymentId(deploymentId).singleResult();
        if (ObjectUtil.isEmpty(deployment)) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEPLOYMENT_NOT_EXIST);
        }

        //获取bpmnModel并转为modelNode
        BpmnModel bpmnModel = repositoryService.getBpmnModel(id);
        ObjectNode modelNode = new BpmnJsonConverter().convertToJson(bpmnModel);

        //构建model并设置流程设计资源
        Model model = new Model();
        model.setModelEditorJson(modelNode.toString());

        //获取流程图显示节点数据
        ObjectNode displayNode = new ObjectMapper().createObjectNode();
        bpmnDisplayJsonConverter.processProcessElements(model, displayNode, new GraphicInfo());

        return displayNode;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void delete(FlowableDefinitionParam flowableDefinitionParam) {
        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();
        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);
        String deploymentId = processDefinition.getDeploymentId();
        repositoryService.deleteDeployment(deploymentId, true);
        //删除该定义对应的表单配置信息
        flowableFormService.delete(id);
        //同时删除该流程定义的选项配置
        flowableOptionService.delete(id);
        //同时删除该流程定义的流程事件
        flowableEventService.delete(id);
        //同时删除该流程定义的流程按钮
        flowableButtonService.delete(id);
        //同时删除该流程定义对应的申请入口
        flowableShortcutService.delete(id);
    }

    @Override
    public List<FlowableUserTaskResult> userTasks(FlowableDefinitionParam flowableDefinitionParam) {
        List<FlowableUserTaskResult> resultList = CollectionUtil.newArrayList();
        //根据id获取流程定义
        String id = flowableDefinitionParam.getId();

        //获取流程定义
        ProcessDefinition processDefinition = this.queryProcessDefinition(id);

        //根据流程定义获取deployment
        String deploymentId = processDefinition.getDeploymentId();
        Deployment deployment = repositoryService.createDeploymentQuery().deploymentId(deploymentId).singleResult();
        if (ObjectUtil.isEmpty(deployment)) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEPLOYMENT_NOT_EXIST);
        }

        //获取bpmnModel并转为modelNode
        BpmnModel bpmnModel = repositoryService.getBpmnModel(id);
        //获取主流程
        Process mainProcess = bpmnModel.getMainProcess();
        //获取用户任务节点类型，深入子流程
        mainProcess.findFlowElementsOfType(UserTask.class, true).forEach(userTask -> {
            FlowableUserTaskResult flowableUserTaskResult = new FlowableUserTaskResult();
            flowableUserTaskResult.setId(userTask.getId());
            flowableUserTaskResult.setProcessDefinitionId(processDefinition.getId());
            flowableUserTaskResult.setName(userTask.getName());
            resultList.add(flowableUserTaskResult);
        });
        return resultList;
    }

    @Override
    public FlowableDefinitionResult detail(String processDefinitionId) {
        ProcessDefinition processDefinition = this.queryProcessDefinition(processDefinitionId);
        return FlowableDefinitionFactory.convertToFlowableDefinitionResult(processDefinition);
    }

    @Override
    public ProcessDefinition queryProcessDefinition(String processDefinitionId) {
        ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery()
                .processDefinitionId(processDefinitionId).singleResult();
        if (ObjectUtil.isNull(processDefinition)) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEFINITION_NOT_EXIST);
        }
        return processDefinition;
    }

    @Override
    public ProcessDefinition queryProcessDefinitionWithValidStatus(String processDefinitionId) {
        ProcessDefinition processDefinition = this.queryProcessDefinition(processDefinitionId);
        boolean suspended = processDefinition.isSuspended();
        if (suspended) {
            throw new ServiceException(FlowableDefinitionExceptionEnum.DEFINITION_SUSPEND);
        }
        return processDefinition;
    }

    @Override
    public String getMultiInstanceActAssigneeParam(String processDefinitionId, String actId) {
        AtomicReference<String> resultParam = new AtomicReference<>();
        ProcessDefinition processDefinition = this.queryProcessDefinition(processDefinitionId);
        //获取bpmnModel并转为modelNode
        BpmnModel bpmnModel = repositoryService.getBpmnModel(processDefinition.getId());
        //获取主流程
        Process mainProcess = bpmnModel.getMainProcess();
        //获取用户任务节点类型，深入子流程
        mainProcess.findFlowElementsOfType(UserTask.class, true).forEach(userTask -> {
            String userTaskId = userTask.getId();
            if (userTaskId.equals(actId)) {
                Object behavior = userTask.getBehavior();
                if (ObjectUtil.isNotNull(behavior)) {
                    //并行多实例节点
                    if (behavior instanceof ParallelMultiInstanceBehavior) {
                        ParallelMultiInstanceBehavior parallelMultiInstanceBehavior =
                                (ParallelMultiInstanceBehavior) behavior;
                        String collectionElementVariable = parallelMultiInstanceBehavior
                                .getCollectionElementVariable();
                        if (ObjectUtil.isNotEmpty(collectionElementVariable)) {
                            resultParam.set(collectionElementVariable);
                        }
                    }
                    //串行多实例节点
                    if (behavior instanceof SequentialMultiInstanceBehavior) {
                        SequentialMultiInstanceBehavior sequentialMultiInstanceBehavior =
                                (SequentialMultiInstanceBehavior) behavior;
                        String collectionElementVariable = sequentialMultiInstanceBehavior
                                .getCollectionElementVariable();
                        if (ObjectUtil.isNotEmpty(collectionElementVariable)) {
                            resultParam.set(collectionElementVariable);
                        }
                    }
                }
            }
        });
        return resultParam.get();
    }

    @Override
    public boolean hasDefinition(String category) {
        ProcessDefinitionQuery processDefinitionQuery = repositoryService.createProcessDefinitionQuery();
        processDefinitionQuery.processDefinitionCategory(category);
        return processDefinitionQuery.list().size() > 0;
    }
}
