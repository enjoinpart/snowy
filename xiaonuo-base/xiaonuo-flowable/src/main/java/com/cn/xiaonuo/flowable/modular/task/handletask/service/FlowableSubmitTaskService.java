package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import java.util.Map;

/**
 * 任务提交service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
public interface FlowableSubmitTaskService {

    /**
     * 提交
     *
     * @param taskId       任务id
     * @param comment      提交意见
     * @param variables    任务参数
     * @param nextAssignee 下一步审批人
     * @param nextDueDate  下一步任务期限
     * @param nextPriority 下一步优先级
     * @author xuyuxiang
     * @date 2020/8/4 18:01
     **/
    void submit(String taskId, String comment, Map<String, String> variables,
                String nextAssignee,
                String nextDueDate,
                Integer nextPriority);

    /**
     * 保存
     *
     * @param taskId    任务id
     * @param variables 任务参数
     * @author xuyuxiang
     * @date 2020/8/5 15:17
     **/
    void save(String taskId, Map<String, String> variables);
}
