package com.cn.xiaonuo.flowable.modular.task.handletask.service;

/**
 * 任务跳转service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:36
 **/
public interface FlowableJumpTaskService {

    /**
     * 跳转
     *
     * @param taskId        任务id
     * @param targetActId   目标节点id
     * @param targetActName 目标节点名称
     * @param comment       跳转原因
     * @author xuyuxiang
     * @date 2020/8/4 20:29
     */
    void jump(String taskId, String targetActId, String targetActName, String comment);
}
