package com.cn.xiaonuo.flowable.modular.task.donetask.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import com.cn.xiaonuo.flowable.modular.task.donetask.service.FlowableDoneTaskService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

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
