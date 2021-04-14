package vip.xiaonuo.flowable.modular.task.handletask.service;

/**
 * 任务挂起service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
public interface FlowableSuspendTaskService {

    /**
     * 挂起（即挂起流程）
     *
     * @param taskId 任务id
     * @author xuyuxiang
     * @date 2020/8/4 20:33
     */
    void suspend(String taskId);
}
