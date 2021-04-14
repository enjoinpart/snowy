package vip.xiaonuo.flowable.modular.task.donetask.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import vip.xiaonuo.flowable.modular.task.donetask.result.FlowableDoneTaskResult;
import vip.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import vip.xiaonuo.flowable.modular.task.donetask.result.FlowableDoneTaskResult;
import vip.xiaonuo.core.pojo.page.PageResult;

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
