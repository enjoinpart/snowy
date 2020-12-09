package com.cn.xiaonuo.flowable.modular.task.donetask.service;

import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import com.cn.xiaonuo.flowable.modular.task.donetask.result.FlowableDoneTaskResult;
import com.cn.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import com.cn.xiaonuo.flowable.modular.task.donetask.result.FlowableDoneTaskResult;

/**
 * 已办任务service接口
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:21
 */
public interface FlowableDoneTaskService {

    /**
     * 查询当前登录用户的已办任务
     *
     * @param flowableDoneTaskParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/21 15:01
     */
    PageResult<FlowableDoneTaskResult> page(FlowableDoneTaskParam flowableDoneTaskParam);
}
