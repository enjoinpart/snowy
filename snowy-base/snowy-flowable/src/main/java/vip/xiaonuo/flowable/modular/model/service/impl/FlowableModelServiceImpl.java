package vip.xiaonuo.flowable.modular.model.service.impl;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.log.Log;
import vip.xiaonuo.core.consts.SymbolConstant;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.modular.model.enums.FlowableModelExceptionEnum;
import vip.xiaonuo.flowable.modular.model.factory.FlowableModelFactory;
import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import vip.xiaonuo.flowable.modular.model.service.FlowableModelService;
import vip.xiaonuo.flowable.modular.user.factory.FlowableUserFactory;
import vip.xiaonuo.flowable.modular.user.factory.FlowableUserFactory;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.apache.commons.lang3.StringUtils;
import org.flowable.bpmn.BpmnAutoLayout;
import org.flowable.bpmn.converter.BpmnXMLConverter;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.bpmn.model.Process;
import org.flowable.editor.language.json.converter.BpmnJsonConverter;
import org.flowable.editor.language.json.converter.util.CollectionUtils;
import org.flowable.ui.common.security.SecurityUtils;
import org.flowable.ui.common.util.XmlUtil;
import org.flowable.ui.modeler.domain.Model;
import org.flowable.ui.modeler.domain.ModelHistory;
import org.flowable.ui.modeler.model.ModelKeyRepresentation;
import org.flowable.ui.modeler.model.ModelRepresentation;
import org.flowable.ui.modeler.repository.ModelHistoryRepository;
import org.flowable.ui.modeler.repository.ModelRepository;
import org.flowable.ui.modeler.serviceapi.ModelService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import vip.xiaonuo.core.consts.SymbolConstant;

import javax.annotation.Resource;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * 流程模型service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:12
 */
@Service
public class FlowableModelServiceImpl implements FlowableModelService {

    private static final Log log = Log.get();

    /**
     * 默认排序规则
     */
    private static final String DEFAULT_ORDER_BY = "modifiedDesc";

    /**
     * 默认模型类型，流程模型
     */
    private static final Integer DEFAULT_MODEL_TYPE = 0;

    /**
     * 模型资源后缀
     */
    private static final String MODEL_BPMN_SUFFIX_BPMN = ".bpmn";

    /**
     * 模型资源后缀
     */
    private static final String MODEL_BPMN_SUFFIX_XML = ".xml";

    private final BpmnXMLConverter bpmnXmlConverter = new BpmnXMLConverter();

    private final BpmnJsonConverter bpmnJsonConverter = new BpmnJsonConverter();

    @Resource
    private ModelService modelService;

    @Resource
    private ModelRepository modelRepository;

    @Resource
    private ModelHistoryRepository modelHistoryRepository;

    @Resource
    private ObjectMapper objectMapper;

    @Override
    public List<FlowableModelResult> list(FlowableModelParam flowableModelParam) {
        List<Model> modelList;
        if (ObjectUtil.isNotNull(flowableModelParam)) {
            if (ObjectUtil.isNotEmpty(flowableModelParam.getName())) {
                String name = SymbolConstant.PERCENT + flowableModelParam.getName().trim() + SymbolConstant.PERCENT;
                modelList = modelRepository.findByModelTypeAndFilter(DEFAULT_MODEL_TYPE, name, DEFAULT_ORDER_BY);
            } else {
                modelList = modelRepository.findByModelType(DEFAULT_MODEL_TYPE, DEFAULT_ORDER_BY);
            }
        } else {
            modelList = modelRepository.findByModelType(DEFAULT_MODEL_TYPE, DEFAULT_ORDER_BY);
        }
        return FlowableModelFactory.convertToFlowableModelResultList(modelList);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public String add(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        //校验参数
        checkParam(flowableModelParam, false);
        //构造modeler ui需要的实体
        ModelRepresentation modelRepresentation = new ModelRepresentation();
        modelRepresentation.setKey(flowableModelParam.getKey());
        modelRepresentation.setName(flowableModelParam.getName());
        modelRepresentation.setDescription(flowableModelParam.getDescription());
        modelRepresentation.setModelType(DEFAULT_MODEL_TYPE);
        String json = modelService.createModelJson(modelRepresentation);
        Model model = modelService.createModel(modelRepresentation, json, SecurityUtils.getCurrentUserObject());
        return model.getId();
    }

    @Override
    public void delete(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        FlowableModelResult flowableModelResult = this.queryFlowableModel(flowableModelParam);
        modelService.deleteModel(flowableModelResult.getId());
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public String edit(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        FlowableModelResult flowableModelResult = this.queryFlowableModel(flowableModelParam);
        //获取模型
        Model model = modelService.getModel(flowableModelResult.getId());
        //校验参数
        checkParam(flowableModelParam, true);
        //更新基本信息
        model.setKey(flowableModelParam.getKey());
        model.setName(flowableModelParam.getName());
        model.setDescription(flowableModelParam.getDescription());
        model.setModelType(DEFAULT_MODEL_TYPE);

        //获取模型的editorJson
        ObjectNode modelNode;
        try {
            modelNode = (ObjectNode) objectMapper.readTree(model.getModelEditorJson());
            modelNode.put("name", model.getName());
            modelNode.put("key", model.getKey());
            //更新其editorJson信息
            ObjectNode propertiesNode = (ObjectNode) modelNode.get("properties");
            propertiesNode.put("process_id", model.getKey());
            propertiesNode.put("name", model.getName());
            if (StringUtils.isNotEmpty(model.getDescription())) {
                propertiesNode.put("documentation", model.getDescription());
            }
            modelNode.set("properties", propertiesNode);
            model.setModelEditorJson(modelNode.toString());
            modelRepository.save(model);
            return model.getId();
        } catch (Exception e) {
            log.error(">>> 模型编辑失败：{}", e.getMessage());
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_EDIT_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public String preview(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        FlowableModelResult flowableModelResult = this.queryFlowableModel(flowableModelParam);
        Model model = modelService.getModel(flowableModelResult.getId());
        byte[] bpmnXml = modelService.getBpmnXML(model);
        return new String(bpmnXml);
    }

    @Override
    public List<FlowableModelResult> version(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        FlowableModelResult flowableModelResult = this.queryFlowableModel(flowableModelParam);
        List<ModelHistory> modelHistoryList = modelHistoryRepository.findByModelId(flowableModelResult.getId());
        return FlowableModelFactory.convertToFlowableModelResultHistoryList(modelHistoryList);
    }

    @Override
    public void setAsNew(FlowableModelParam flowableModelParam) {
        //给flowable设置当前用户
        FlowableUserFactory.assumeUser();
        FlowableModelParam queryParam = new FlowableModelParam();
        queryParam.setId(flowableModelParam.getModelId());
        FlowableModelResult flowableModelResult = this.queryFlowableModel(queryParam);
        String modelHistoryId = flowableModelParam.getId();
        String modelId = flowableModelResult.getId();
        ModelHistory modelHistory = modelService.getModelHistory(modelId, modelHistoryId);
        modelService.reviveProcessModelHistory(modelHistory, SecurityUtils.getCurrentUserObject(), null);
    }

    @Override
    public String importModel(MultipartFile file) {
        if (ObjectUtil.isNull(file)) {
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_FILE_EMPTY);
        }
        String fileName = file.getOriginalFilename();
        if (ObjectUtil.isNull(fileName)) {
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_FILE_SUFFIX_ERROR);
        }
        if (!fileName.endsWith(MODEL_BPMN_SUFFIX_BPMN) && !fileName.endsWith(MODEL_BPMN_SUFFIX_XML)) {
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_FILE_SUFFIX_ERROR);
        } else {
            try {
                FlowableUserFactory.assumeUser();
                XMLInputFactory xif = XmlUtil.createSafeXmlInputFactory();
                InputStreamReader xmlIn = new InputStreamReader(file.getInputStream(), StandardCharsets.UTF_8);
                XMLStreamReader xtr = xif.createXMLStreamReader(xmlIn);
                BpmnModel bpmnModel = bpmnXmlConverter.convertToBpmnModel(xtr);
                if (CollectionUtils.isEmpty(bpmnModel.getProcesses())) {
                    throw new ServiceException(FlowableModelExceptionEnum.MODEL_IMPORT_NO_RESOURCE);
                } else {
                    if (ObjectUtil.isEmpty(bpmnModel.getLocationMap())) {
                        BpmnAutoLayout bpmnLayout = new BpmnAutoLayout(bpmnModel);
                        bpmnLayout.execute();
                    }

                    ObjectNode modelNode = bpmnJsonConverter.convertToJson(bpmnModel);
                    Process process = bpmnModel.getMainProcess();
                    String name = process.getId();
                    if (StringUtils.isNotEmpty(process.getName())) {
                        name = process.getName();
                    }

                    String description = process.getDocumentation();
                    ModelRepresentation model = new ModelRepresentation();
                    model.setKey(process.getId());
                    model.setName(name);
                    model.setDescription(description);
                    model.setModelType(DEFAULT_MODEL_TYPE);
                    Model resultModel = modelService.createModel(model, modelNode.toString(), SecurityUtils.getCurrentUserObject());
                    return resultModel.getId();
                }
            } catch (Exception e) {
                log.error(">>> 模型导入失败：{}", e.getMessage());
                throw new ServiceException(FlowableModelExceptionEnum.MODEL_IMPORT_ERROR.getCode(), e.getMessage());
            }
        }
    }

    /**
     * 获取模型
     *
     * @author xuyuxiang
     * @date 2020/4/26 16:25
     */
    private FlowableModelResult queryFlowableModel(FlowableModelParam flowableModelParam) {
        Model model = modelRepository.get(flowableModelParam.getId());
        if (ObjectUtil.isNull(model)) {
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_NOT_EXIST);
        }
        return FlowableModelFactory.convertToFlowableModelResult(model);
    }

    /**
     * 参数校验
     *
     * @author xuyuxiang
     * @date 2020/8/16 0:14
     */
    private void checkParam(FlowableModelParam flowableModelParam, boolean isExcludeSelf) {
        //校验键值是否重复
        String key = flowableModelParam.getKey();
        ModelKeyRepresentation modelKeyInfo;
        if (isExcludeSelf) {
            String id = flowableModelParam.getId();
            Model model = modelService.getModel(id);
            modelKeyInfo = modelService.validateModelKey(model, DEFAULT_MODEL_TYPE, key);
        } else {
            modelKeyInfo = modelService.validateModelKey(null, DEFAULT_MODEL_TYPE, key);
        }
        if (modelKeyInfo.isKeyAlreadyExists()) {
            throw new ServiceException(FlowableModelExceptionEnum.MODEL_KEY_REPEAT);
        }
    }
}
