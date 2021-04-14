package vip.xiaonuo.flowable.modular.task.instancetask.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.task.instancetask.param.FlowableInstanceTaskParam;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import vip.xiaonuo.flowable.modular.task.instancetask.param.FlowableInstanceTaskParam;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import vip.xiaonuo.core.pojo.page.PageResult;

/**
 * 实例任务Service接口
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:12
 */
public interface FlowableInstanceTaskService {

    /**
     * 查询实例任务
     *
     * @param flowableInstanceTaskParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/5/25 17:13
     */
    PageResult<FlowableInstanceTaskResult> page(FlowableInstanceTaskParam flowableInstanceTaskParam);
}
