package com.cn.xiaonuo.flowable.modular.task.todotask.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import com.cn.xiaonuo.flowable.modular.task.todotask.service.FlowableTodoTaskService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 待办任务控制器
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:20
 */
@RestController
public class FlowableTodoTaskController {

    @Resource
    private FlowableTodoTaskService flowableTodoTaskService;

    /**
     * 查询待办任务
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:47
     */
    @Permission
    @GetMapping("/flowableTodoTask/page")
    @BusinessLog(title = "待办任务_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableTodoTaskParam flowableTodoTaskParam) {
        return new SuccessResponseData(flowableTodoTaskService.page(flowableTodoTaskParam));
    }
}
