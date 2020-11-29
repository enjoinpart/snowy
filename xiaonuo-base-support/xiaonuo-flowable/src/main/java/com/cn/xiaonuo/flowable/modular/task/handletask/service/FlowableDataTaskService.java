package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import java.util.Map;

/**
 * 获取任务数据Service接口
 *
 * @author xuyuxiang
 * @date 2020/8/16 17:57
 */
public interface FlowableDataTaskService {

    /**
     * 根据任务id获取数据
     *
     * @param taskId 任务id
     * @return 数据
     * @author xuyuxiang
     * @date 2020/8/16 17:58
     */
    Map<String, Object> taskData(String taskId);
}
