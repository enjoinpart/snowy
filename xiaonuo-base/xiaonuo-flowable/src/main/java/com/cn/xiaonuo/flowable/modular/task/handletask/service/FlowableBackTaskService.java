package com.cn.xiaonuo.flowable.modular.task.handletask.service;

/**
 * 任务退回service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:35
 **/
public interface FlowableBackTaskService {

    /**
     * 退回
     *
     * @param taskId        任务id
     * @param targetActId   目标节点id
     * @param targetActName 目标节点名称
     * @param comment       退回原因
     * @author xuyuxiang
     * @date 2020/8/4 20:11
     */
    void back(String taskId, String targetActId, String targetActName, String comment);
}
