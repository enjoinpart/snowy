package vip.xiaonuo.flowable.modular.task.handletask.service;

import java.util.List;

/**
 * 任务减签service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
public interface FlowableDeleteSignTaskService {

    /**
     * 减签
     *
     * @param taskId       任务id
     * @param assigneeList 要减签的人的id集合
     * @param comment      减签意见
     * @author xuyuxiang
     * @date 2020/8/4 20:38
     */
    void deleteSign(String taskId, List<String> assigneeList, String comment);
}
