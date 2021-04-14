package vip.xiaonuo.flowable.modular.task.instancetask.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.task.instancetask.param.FlowableInstanceTaskParam;
import vip.xiaonuo.flowable.modular.task.instancetask.service.FlowableInstanceTaskService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 实例任务控制器
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:06
 */
@RestController
public class FlowableInstanceTaskController {

    @Resource
    private FlowableInstanceTaskService flowableInstanceTaskService;

    /**
     * 查询流程实例的任务
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:07
     */
    @Permission
    @GetMapping("/flowableInstanceTask/page")
    @BusinessLog(title = "流程实例任务_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(@Validated(FlowableInstanceTaskParam.page.class) FlowableInstanceTaskParam flowableInstanceTaskParam) {
        return new SuccessResponseData(flowableInstanceTaskService.page(flowableInstanceTaskParam));
    }
}
