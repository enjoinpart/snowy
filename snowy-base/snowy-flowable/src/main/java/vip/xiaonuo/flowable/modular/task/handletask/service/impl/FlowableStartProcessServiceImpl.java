package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import vip.xiaonuo.flowable.modular.option.service.FlowableOptionService;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableStartProcessService;
import org.flowable.engine.FormService;
import org.flowable.engine.IdentityService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 流程发起service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:36
 **/
@Service
public class FlowableStartProcessServiceImpl implements FlowableStartProcessService {

    @Resource
    private IdentityService identityService;

    @Resource
    private FlowableDefinitionService flowableDefinitionService;

    @Resource
    private FlowableOptionService flowableOptionService;

    @Resource
    private RuntimeService runtimeService;

    @Resource
    private TaskService taskService;

    /**
     * 使用此方式解决formService重名问题
     **/
    private final FormService formService;

    public FlowableStartProcessServiceImpl(FormService formService) {
        this.formService = formService;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void start(String processDefinitionId, Map<String, String> variables, String nextAssignee,
                      String nextDueDate,
                      Integer nextPriority) {
        //获取流程定义，同时校验了流程定义是否存在以及是否挂起
        ProcessDefinition processDefinition = flowableDefinitionService.queryProcessDefinitionWithValidStatus(processDefinitionId);
        if (ObjectUtil.isEmpty(variables)) {
            variables = CollectionUtil.newHashMap();
        }
        processDefinitionId = processDefinition.getId();
        //设置启动人id，很重要，当在流程设计器设置节点办理人为任务发起人时，所需参数为${INITIATOR}，即在此处设置的人
        identityService.setAuthenticatedUserId(Convert.toStr(LoginContextHolder.me().getSysLoginUserId()));
        //启动，将启动参数传入表单
        ProcessInstance processInstance = formService.submitStartFormData(processDefinitionId, variables);
        //获取流程实例id
        String processInstanceId = processInstance.getId();
        //设置流程标题
        String processTitle = flowableOptionService.getTitleByProcessDefinitionId(processDefinitionId);
        if (ObjectUtil.isNotEmpty(processTitle)) {
            runtimeService.setProcessInstanceName(processInstanceId, processTitle);
        }
        //如果该流程设置了自动完成第一个任务则自动完成
        boolean jumpFirst = flowableOptionService.getFlowableOptionJumpFirst(processDefinitionId);
        if (jumpFirst) {
            //获取当前任务，注意，当该节点为多实例，如并行审批的时候，任务可能有多个,查询任务列表，并都自动完成
            List<Task> taskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
            if (ObjectUtil.isNotEmpty(taskList)) {
                taskList.forEach(task -> FlowableCommonOperator.me().complete(task.getId()));
            }
        }
        //如果该流程设置了跳过相同处理人则自动完成
        boolean smartComplete = flowableOptionService.getFlowableOptionSmartComplete(processDefinitionId);
        if (smartComplete) {
            FlowableCommonOperator.me().smartCompleteNext(processInstanceId);
        }

        //如果设定了下一任务审批人，则设置该审批人
        if (ObjectUtil.isNotEmpty(nextAssignee)) {
            FlowableCommonOperator.me().setNextAssignee(processInstanceId, nextAssignee);
        }

        //如果设定了下一任务审批期限，则设置审批期限
        if (ObjectUtil.isNotEmpty(nextDueDate)) {
            FlowableCommonOperator.me().setNextDueDate(processInstanceId, nextDueDate);
        }

        //如果设定了下一任务审批优先级，则设置审批优先级
        if (ObjectUtil.isNotEmpty(nextPriority)) {
            FlowableCommonOperator.me().setNextPriority(processInstanceId, nextPriority);
        }
    }
}
