package vip.xiaonuo.flowable.modular.instance.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.BetweenFormater;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.flowable.modular.instance.result.FlowableCommentHistoryResult;
import vip.xiaonuo.flowable.modular.instance.service.FlowableInstanceService;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import org.flowable.engine.TaskService;
import org.flowable.engine.task.Comment;
import org.flowable.task.api.history.HistoricTaskInstance;

import java.util.List;

/**
 * 流程实例审批记录工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/4/29 17:17
 */
public class FlowableCommentHistoryFactory {

    private static final FlowableInstanceService flowableInstanceService = SpringUtil.getBean(FlowableInstanceService.class);
    private static final TaskService taskService = SpringUtil.getBean(TaskService.class);

    /**
     * 将流程历史任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/29 17:19
     */
    public static List<FlowableCommentHistoryResult> convertToFlowableCommentHistoryResultList(List<HistoricTaskInstance> historicTaskInstanceList) {
        List<FlowableCommentHistoryResult> flowableCommentHistoryResultList = CollectionUtil.newArrayList();
        historicTaskInstanceList.forEach(historicTaskInstance -> {
            FlowableCommentHistoryResult flowableCommentHistoryResult = convertToFlowableCommentHistoryResult(historicTaskInstance);
            flowableCommentHistoryResultList.add(flowableCommentHistoryResult);
        });
        return flowableCommentHistoryResultList;
    }

    /**
     * 将单个流程历史任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/29 17:22
     */
    private static FlowableCommentHistoryResult convertToFlowableCommentHistoryResult(HistoricTaskInstance historicTaskInstance) {
        FlowableCommentHistoryResult flowableCommentHistoryResult = new FlowableCommentHistoryResult();
        flowableCommentHistoryResult.setTaskId(historicTaskInstance.getId());
        flowableCommentHistoryResult.setName(historicTaskInstance.getName());
        flowableCommentHistoryResult.setActivityId(historicTaskInstance.getTaskDefinitionKey());
        flowableCommentHistoryResult.setExecutionId(historicTaskInstance.getExecutionId());
        flowableCommentHistoryResult.setAssignee(historicTaskInstance.getAssignee());
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getAssignee())) {
            flowableCommentHistoryResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByUserId(historicTaskInstance.getAssignee()));
            flowableCommentHistoryResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByUserId(historicTaskInstance.getAssignee()));
        } else {
            //任务办理人为空，即没有指定具体的人，则可能是候选人或候选组，则设置候选人或候选组名字
            flowableCommentHistoryResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByTaskId(historicTaskInstance.getId()));
            flowableCommentHistoryResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByTaskId(historicTaskInstance.getId()));
        }
        flowableCommentHistoryResult.setCreateTime(historicTaskInstance.getCreateTime());
        flowableCommentHistoryResult.setClaimTime(historicTaskInstance.getClaimTime());
        flowableCommentHistoryResult.setEndTime(historicTaskInstance.getEndTime());
        flowableCommentHistoryResult.setDuration("-");
        if(ObjectUtil.isNotEmpty(historicTaskInstance.getDurationInMillis())) {
            flowableCommentHistoryResult.setDuration(DateUtil.formatBetween(historicTaskInstance.getDurationInMillis(), BetweenFormater.Level.SECOND));
        }
        flowableCommentHistoryResult.setComment(getTaskComments(historicTaskInstance.getId()));
        return flowableCommentHistoryResult;
    }

    /**
     * 获取任务审批记录
     *
     * @author xuyuxiang
     * @date 2020/8/13 16:35
     **/
    public static String getTaskComments(String taskId) {
        //一条任务只有一条审批意见，此处查询多条合并为一条
        List<Comment> commentList = taskService.getTaskComments(taskId);
        if (ObjectUtil.isNotEmpty(commentList)) {
            StringBuilder comments = new StringBuilder();
            if (ObjectUtil.isNotEmpty(commentList)) {
                for (Comment comment : commentList) {
                    //倒序前追加，保证顺序
                    comments.insert(0, comment.getFullMessage());
                }
            }
            return comments.toString();
        }
        return "无";
    }
}
