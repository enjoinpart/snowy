package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import java.util.List;

/**
 * 任务转办service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
public interface FlowableTurnTaskService {

    /**
     * 转办任务
     *
     * @param taskId       任务id
     * @param assigneeList 要转办的人或角色的集合
     * @author xuyuxiang
     * @date 2020/8/4 20:38
     */
    void turnTask(String taskId, List<String> assigneeList);
}
