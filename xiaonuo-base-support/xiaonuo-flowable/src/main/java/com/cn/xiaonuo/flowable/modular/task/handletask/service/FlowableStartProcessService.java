package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import java.util.Map;

/**
 * 流程发起service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:36
 **/
public interface FlowableStartProcessService {

    /**
     * 开启
     *
     * @param processDefinitionId 流程定义id
     * @param variables           启动参数
     * @param nextAssignee        下一步审批人
     * @param nextDueDate         下一步任务期限
     * @param nextPriority        下一步优先级
     * @author xuyuxiang
     * @date 2020/8/4 17:40
     **/
    void start(String processDefinitionId,
               Map<String, String> variables,
               String nextAssignee,
               String nextDueDate,
               Integer nextPriority);
}
