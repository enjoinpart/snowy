package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import java.util.List;

/**
 * 任务加签service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
public interface FlowableAddSignTaskService {

    /**
     * 加签
     *
     * @param taskId       任务id
     * @param assigneeList 要加签的人的id集合
     * @param comment      加签意见
     * @author xuyuxiang
     * @date 2020/8/4 20:38
     */
    void addSign(String taskId, List<String> assigneeList, String comment);
}
