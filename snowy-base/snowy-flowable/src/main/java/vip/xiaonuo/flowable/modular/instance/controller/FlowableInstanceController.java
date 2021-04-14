package vip.xiaonuo.flowable.modular.instance.controller;

import cn.hutool.core.convert.Convert;
import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.context.constant.ConstantContextHolder;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.exception.DemoException;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.instance.param.FlowableInstanceParam;
import vip.xiaonuo.flowable.modular.instance.service.FlowableInstanceService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;
import java.util.List;

/**
 * 流程实例控制器
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:12
 */
@RestController
public class FlowableInstanceController {

    @Resource
    private FlowableInstanceService flowableInstanceService;

    /**
     * 查询流程实例
     *
     * @author xuyuxiang
     * @date 2020/4/14 19:46
     */
    @Permission
    @GetMapping("/flowableInstance/page")
    @BusinessLog(title = "流程实例_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.page(flowableInstanceParam));
    }

    /**
     * 查询我的申请
     *
     * @author xuyuxiang
     * @date 2020/7/28 11:01
     **/
    @Permission
    @GetMapping("/flowableInstance/my")
    @BusinessLog(title = "流程实例_我的申请", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData my(FlowableInstanceParam flowableInstanceParam) {
        String startUserId = Convert.toStr(LoginContextHolder.me().getSysLoginUserId());
        flowableInstanceParam.setStartUserId(startUserId);
        return new SuccessResponseData(flowableInstanceService.page(flowableInstanceParam));
    }

    /**
     * 查询流程实例的历史任务节点，用于退回时选择节点
     *
     * @author xuyuxiang
     * @date 2020/4/27 15:07
     */
    @Permission
    @GetMapping("/flowableInstance/hisUserTasks")
    @BusinessLog(title = "流程实例_历史用户任务节点", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData hisUserTasks(@Validated(FlowableInstanceParam.dropDown.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.hisUserTasks(flowableInstanceParam));
    }

    /**
     * 流程实例的流程图，显示当前节点和走过的节点
     *
     * @author xuyuxiang
     * @date 2020/4/28 14:27
     */
    @Permission
    @GetMapping("/flowableInstance/trace")
    @BusinessLog(title = "流程实例_追踪", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData trace(@Validated(FlowableInstanceParam.trace.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.trace(flowableInstanceParam));
    }

    /**
     * 挂起流程实例
     *
     * @author xuyuxiang
     * @date 2020/4/29 16:18
     */
    @Permission
    @PostMapping("/flowableInstance/suspend")
    @BusinessLog(title = "流程实例_挂起", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData suspend(@RequestBody @Validated(FlowableInstanceParam.suspend.class) FlowableInstanceParam flowableInstanceParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableInstanceService.activeOrSuspend(flowableInstanceParam, true);
        return new SuccessResponseData();
    }

    /**
     * 激活流程实例
     *
     * @author xuyuxiang
     * @date 2020/4/29 16:18
     */
    @Permission
    @PostMapping("/flowableInstance/active")
    @BusinessLog(title = "流程实例_激活", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData active(@RequestBody @Validated(FlowableInstanceParam.active.class) FlowableInstanceParam flowableInstanceParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableInstanceService.activeOrSuspend(flowableInstanceParam, false);
        return new SuccessResponseData();
    }

    /**
     * 流程实例的审批记录
     *
     * @author xuyuxiang
     * @date 2020/4/28 14:27
     */
    @Permission
    @GetMapping("/flowableInstance/commentHistory")
    @BusinessLog(title = "流程实例_历史审批记录", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData commentHistory(@Validated(FlowableInstanceParam.commentHistory.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.commentHistory(flowableInstanceParam));
    }

    /**
     * 终止流程实例
     *
     * @author xuyuxiang
     * @date 2020/8/11 14:21
     **/
    @Permission
    @PostMapping("/flowableInstance/end")
    @BusinessLog(title = "流程实例_终止", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData end(@RequestBody @Validated(FlowableInstanceParam.end.class) FlowableInstanceParam flowableInstanceParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableInstanceService.end(flowableInstanceParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程实例
     *
     * @author xuyuxiang
     * @date 2020/8/11 14:21
     **/
    @Permission
    @ResponseBody
    @PostMapping("/flowableInstance/delete")
    @BusinessLog(title = "流程实例_删除", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData delete(@RequestBody @Validated(FlowableInstanceParam.trace.class) List<FlowableInstanceParam> flowableInstanceParamList) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableInstanceService.delete(flowableInstanceParamList);
        return new SuccessResponseData();
    }

    /**
     * 获取流程实例中表单填写的数据
     *
     * @author xuyuxiang
     * @date 2020/8/11 14:21
     **/
    @Permission
    @GetMapping("/flowableInstance/formData")
    @BusinessLog(title = "流程实例_表单数据", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData formData(@Validated(FlowableInstanceParam.trace.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.formData(flowableInstanceParam));
    }

    /**
     * 加签人员选择器
     *
     * @author xuyuxiang
     * @date 2020/9/11 17:44
     **/
    @Permission
    @GetMapping("/flowableInstance/addSignUserSelector")
    @BusinessLog(title = "流程实例_加签人员选择器", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData addSignUserSelector(@Validated(FlowableInstanceParam.trace.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.addSignUserSelector(flowableInstanceParam));
    }

    /**
     * 减签人员选择器
     *
     * @author xuyuxiang
     * @date 2020/9/11 17:44
     **/
    @Permission
    @GetMapping("/flowableInstance/deleteSignUserSelector")
    @BusinessLog(title = "流程实例_减签人员选择器", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData deleteSignUserSelector(@Validated(FlowableInstanceParam.trace.class) FlowableInstanceParam flowableInstanceParam) {
        return new SuccessResponseData(flowableInstanceService.deleteSignUserSelector(flowableInstanceParam));
    }

}
