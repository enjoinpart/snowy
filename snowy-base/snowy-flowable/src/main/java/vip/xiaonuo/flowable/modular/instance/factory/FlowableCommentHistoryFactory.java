/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
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
