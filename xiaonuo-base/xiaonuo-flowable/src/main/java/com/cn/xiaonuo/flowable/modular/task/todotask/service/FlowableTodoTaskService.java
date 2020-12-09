package com.cn.xiaonuo.flowable.modular.task.todotask.service;

import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import com.cn.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;
import com.cn.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import com.cn.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;

/**
 * 待办任务service接口
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:21
 */
public interface FlowableTodoTaskService {

    /**
     * 查询当前登录用户的待办任务
     *
     * @param flowableTodoTaskParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/20 10:02
     */
    PageResult<FlowableTodoTaskResult> page(FlowableTodoTaskParam flowableTodoTaskParam);
}
