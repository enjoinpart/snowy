package com.cn.xiaonuo.flowable.modular.task.handletask.service;

/**
 * 任务委托service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:35
 **/
public interface FlowableEntrustTaskService {

    /**
     * 委托，即邀请阅示
     *
     * @param taskId   任务id
     * @param assignee 要委托的用户id
     * @param comment  委托意见
     * @author xuyuxiang
     * @date 2020/8/4 20:23
     */
    void entrust(String taskId, String assignee, String comment);
}
