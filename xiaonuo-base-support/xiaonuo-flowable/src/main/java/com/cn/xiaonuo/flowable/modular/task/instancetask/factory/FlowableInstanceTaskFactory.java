package com.cn.xiaonuo.flowable.modular.task.instancetask.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.BetweenFormater;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.core.util.PastTimeFormatUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import com.cn.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cn.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import com.cn.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import org.flowable.task.api.history.HistoricTaskInstance;

import java.util.List;

/**
 * 实例任务工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:31
 */
public class FlowableInstanceTaskFactory {

    /**
     * 根据实例任务集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:33
     */
    public static PageResult<FlowableInstanceTaskResult> pageResult(List<HistoricTaskInstance> taskList,
                                                                    Page<FlowableInstanceTaskResult> defaultPage) {
        List<FlowableInstanceTaskResult> flowableInstanceTaskResultList =
                convertToFlowableInstanceTaskResultList(taskList);
        return new PageResult<>(defaultPage, flowableInstanceTaskResultList);
    }

    /**
     * 将实例任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:34
     */
    private static List<FlowableInstanceTaskResult> convertToFlowableInstanceTaskResultList(List<HistoricTaskInstance> taskList) {
        List<FlowableInstanceTaskResult> flowableInstanceTaskResultList = CollectionUtil.newArrayList();
        taskList.forEach(historicTaskInstance -> {
            FlowableInstanceTaskResult flowableInstanceTaskResult = convertToFlowableInstanceTaskResult(historicTaskInstance);
            flowableInstanceTaskResultList.add(flowableInstanceTaskResult);
        });
        return flowableInstanceTaskResultList;
    }

    /**
     * 将单个实例任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:34
     */
    private static FlowableInstanceTaskResult convertToFlowableInstanceTaskResult(HistoricTaskInstance historicTaskInstance) {
        FlowableInstanceTaskResult flowableInstanceTaskResult = new FlowableInstanceTaskResult();
        flowableInstanceTaskResult.setId(historicTaskInstance.getId());
        flowableInstanceTaskResult.setName(historicTaskInstance.getName());
        flowableInstanceTaskResult.setActivityId(historicTaskInstance.getTaskDefinitionKey());
        flowableInstanceTaskResult.setProcessInstanceId(historicTaskInstance.getProcessInstanceId());
        flowableInstanceTaskResult.setExecutionId(historicTaskInstance.getExecutionId());
        flowableInstanceTaskResult.setAssignee(historicTaskInstance.getAssignee());
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getAssignee())) {
            flowableInstanceTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByUserId(historicTaskInstance.getAssignee()));
            flowableInstanceTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByUserId(historicTaskInstance.getAssignee()));
        } else {
            //任务办理人为空，即没有指定具体的人，则可能是候选人或候选组，则设置候选人或候选组名字
            flowableInstanceTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByTaskId(historicTaskInstance.getId()));
            flowableInstanceTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByTaskId(historicTaskInstance.getId()));
        }
        flowableInstanceTaskResult.setPriority(historicTaskInstance.getPriority());
        flowableInstanceTaskResult.setCreateTime(historicTaskInstance.getCreateTime());
        flowableInstanceTaskResult.setFormatCreateTime(PastTimeFormatUtil.formatPastTime(historicTaskInstance.getCreateTime()));
        flowableInstanceTaskResult.setEndTime(historicTaskInstance.getEndTime());
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getEndTime())) {
            flowableInstanceTaskResult.setFormatEndTime(PastTimeFormatUtil.formatPastTime(historicTaskInstance.getEndTime()));
            flowableInstanceTaskResult.setEnded(true);
        } else {
            flowableInstanceTaskResult.setEnded(false);
        }
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getDurationInMillis())) {
            flowableInstanceTaskResult.setDuration(DateUtil.formatBetween(historicTaskInstance.getDurationInMillis(), BetweenFormater.Level.SECOND));
        }
        flowableInstanceTaskResult.setDueDate(historicTaskInstance.getDueDate());

        return flowableInstanceTaskResult;
    }
}
