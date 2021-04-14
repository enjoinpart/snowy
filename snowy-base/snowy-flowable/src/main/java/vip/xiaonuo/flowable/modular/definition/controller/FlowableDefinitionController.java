package vip.xiaonuo.flowable.modular.definition.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.context.constant.ConstantContextHolder;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.exception.DemoException;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.definition.param.FlowableDefinitionParam;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import vip.xiaonuo.flowable.modular.definition.param.FlowableDefinitionParam;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * 流程定义控制器
 *
 * @author xuyuxiang
 * @date 2020/4/14 17:49
 */
@RestController
public class FlowableDefinitionController {

    @Resource
    private FlowableDefinitionService flowableDefinitionService;

    /**
     * 查询流程定义
     *
     * @author xuyuxiang
     * @date 2020/4/14 19:46
     */
    @Permission
    @GetMapping("/flowableDefinition/page")
    @BusinessLog(title = "流程定义_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableDefinitionParam flowableDefinitionParam) {
        return new SuccessResponseData(flowableDefinitionService.page(flowableDefinitionParam));
    }

    /**
     * 部署流程定义
     *
     * @author xuyuxiang
     * @date 2020/4/14 19:46
     */
    @Permission
    @PostMapping("/flowableDefinition/deploy")
    @BusinessLog(title = "流程定义_部署", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData deploy(@RequestBody @Validated(FlowableDefinitionParam.deploy.class) FlowableDefinitionParam flowableDefinitionParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableDefinitionService.deploy(flowableDefinitionParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程定义，根据版本删除，级联删除流程实例和相关任务
     *
     * @author xuyuxiang
     * @date 2020/4/14 19:46
     */
    @Permission
    @PostMapping("/flowableDefinition/delete")
    @BusinessLog(title = "流程定义_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableDefinitionParam.delete.class) FlowableDefinitionParam flowableDefinitionParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableDefinitionService.delete(flowableDefinitionParam);
        return new SuccessResponseData();
    }

    /**
     * 导出流程文件
     *
     * @author xuyuxiang
     * @date 2020/4/15 9:47
     */
    @Permission
    @GetMapping(value = "/flowableDefinition/export", produces = MediaType.APPLICATION_XML_VALUE)
    @BusinessLog(title = "流程定义_导出", opType = LogAnnotionOpTypeEnum.EXPORT)
    public void export(@Validated(FlowableDefinitionParam.export.class) FlowableDefinitionParam flowableDefinitionParam, HttpServletResponse response) {
        flowableDefinitionService.export(flowableDefinitionParam, response);
    }

    /**
     * 映射流程定义，将已部署的流程映射到模型
     *
     * @author xuyuxiang
     * @date 2020/4/14 19:46
     */
    @Permission
    @PostMapping("/flowableDefinition/mapping")
    @BusinessLog(title = "流程定义_映射", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData mapping(@RequestBody @Validated(FlowableDefinitionParam.mapping.class) FlowableDefinitionParam flowableDefinitionParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableDefinitionService.mapping(flowableDefinitionParam);
        return new SuccessResponseData();
    }

    /**
     * 挂起流程定义
     *
     * @author xuyuxiang
     * @date 2020/4/15 17:17
     */
    @Permission
    @PostMapping("/flowableDefinition/suspend")
    @BusinessLog(title = "流程定义_挂起", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData suspend(@RequestBody @Validated(FlowableDefinitionParam.suspend.class) FlowableDefinitionParam flowableDefinitionParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableDefinitionService.activeOrSuspend(flowableDefinitionParam, true);
        return new SuccessResponseData();
    }

    /**
     * 激活流程定义
     *
     * @author xuyuxiang
     * @date 2020/4/15 17:17
     */
    @Permission
    @PostMapping("/flowableDefinition/active")
    @BusinessLog(title = "流程定义_激活", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData active(@RequestBody @Validated(FlowableDefinitionParam.active.class) FlowableDefinitionParam flowableDefinitionParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableDefinitionService.activeOrSuspend(flowableDefinitionParam, false);
        return new SuccessResponseData();
    }

    /**
     * 流程定义的流程图
     *
     * @author xuyuxiang
     * @date 2020/4/15 17:17
     */
    @Permission
    @GetMapping("/flowableDefinition/trace")
    @BusinessLog(title = "流程定义_追踪", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData trace(@Validated(FlowableDefinitionParam.trace.class) FlowableDefinitionParam flowableDefinitionParam) {
        return new SuccessResponseData(flowableDefinitionService.trace(flowableDefinitionParam));
    }

    /**
     * 流程定义的用户任务节点，用于跳转时选择节点
     *
     * @author xuyuxiang
     * @date 2020/4/26 11:19
     */
    @Permission
    @GetMapping("/flowableDefinition/userTasks")
    @BusinessLog(title = "流程定义_用户任务节点", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData userTasks(@Validated(FlowableDefinitionParam.trace.class) FlowableDefinitionParam flowableDefinitionParam) {
        return new SuccessResponseData(flowableDefinitionService.userTasks(flowableDefinitionParam));
    }

}
