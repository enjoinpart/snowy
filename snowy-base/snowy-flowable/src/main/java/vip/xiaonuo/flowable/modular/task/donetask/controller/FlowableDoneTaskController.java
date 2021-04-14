package vip.xiaonuo.flowable.modular.task.donetask.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import vip.xiaonuo.flowable.modular.task.donetask.service.FlowableDoneTaskService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 已办任务控制器
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:19
 */
@RestController
public class FlowableDoneTaskController {

    @Resource
    private FlowableDoneTaskService flowableDoneTaskService;

    /**
     * 查询已办任务
     *
     * @author xuyuxiang
     * @date 2020/4/21 14:59
     */
    @Permission
    @GetMapping("/flowableDoneTask/page")
    @BusinessLog(title = "已办任务_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableDoneTaskParam flowableDoneTaskParam) {
        return new SuccessResponseData(flowableDoneTaskService.page(flowableDoneTaskParam));
    }
}
