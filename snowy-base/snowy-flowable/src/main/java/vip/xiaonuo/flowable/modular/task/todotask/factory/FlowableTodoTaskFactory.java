package vip.xiaonuo.flowable.modular.task.todotask.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.core.enums.DelegateStatusEnum;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import vip.xiaonuo.flowable.modular.instance.service.FlowableInstanceService;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.flowable.task.api.DelegationState;
import org.flowable.task.api.Task;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.core.enums.DelegateStatusEnum;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import vip.xiaonuo.flowable.modular.instance.service.FlowableInstanceService;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;

import java.util.List;

/**
 * 待办任务工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/4/20 17:26
 */
public class FlowableTodoTaskFactory {

    private static final FlowableInstanceService flowableInstanceService = SpringUtil.getBean(FlowableInstanceService.class);

    /**
     * 根据待办任务集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/4/20 1727
     */
    public static PageResult<FlowableTodoTaskResult> pageResult(List<Task> taskList,
                                                                Page<FlowableTodoTaskResult> defaultPage) {
        List<FlowableTodoTaskResult> flowableTodoTaskResultList =
                convertToFlowableTodoTaskResultList(taskList);
        return new PageResult<>(defaultPage, flowableTodoTaskResultList);
    }

    /**
     * 将待办任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/20 17:28
     */
    private static List<FlowableTodoTaskResult> convertToFlowableTodoTaskResultList(List<Task> taskList) {
        List<FlowableTodoTaskResult> flowableTodoTaskResultList = CollectionUtil.newArrayList();
        taskList.forEach(task -> {
            FlowableTodoTaskResult flowableTodoTaskResult = convertToFlowableTodoTaskResult(task);
            flowableTodoTaskResultList.add(flowableTodoTaskResult);
        });
        return flowableTodoTaskResultList;
    }

    /**
     * 将单个待办任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/21 9:54
     */
    private static FlowableTodoTaskResult convertToFlowableTodoTaskResult(Task task) {
        FlowableTodoTaskResult flowableTodoTaskResult = new FlowableTodoTaskResult();
        flowableTodoTaskResult.setId(task.getId());
        flowableTodoTaskResult.setName(task.getName());
        flowableTodoTaskResult.setActivityId(task.getTaskDefinitionKey());
        flowableTodoTaskResult.setExecutionId(task.getExecutionId());
        //委托中：已经委托了，对方还没给出意见(没做任何处理); 委托结束：该任务已经解决(resolved)，即已经给出意见，但是还没完成该任务
        //当被委托人解决任务时，该任务又回到自己名下，由自己完成后进入下一节点

        //如果委托状态为空，则表示未委托，否则表示委托了
        if (ObjectUtil.isEmpty(task.getDelegationState())) {
            //非委托任务
            flowableTodoTaskResult.setDelegationState(DelegateStatusEnum.NOT.getCode());
        } else {
            //获取委托状态
            DelegationState delegationState = task.getDelegationState();
            //委托中
            if (DelegationState.PENDING.equals(delegationState)) {
                flowableTodoTaskResult.setDelegationState(DelegateStatusEnum.PENDING.getCode());
            }
            //委托结束
            if (DelegationState.RESOLVED.equals(delegationState)) {
                flowableTodoTaskResult.setDelegationState(DelegateStatusEnum.RESOLVED.getCode());
            }
        }

        //任务所属人不为空
        if (ObjectUtil.isNotEmpty(task.getOwner())) {
            //任务所属人
            flowableTodoTaskResult.setOwner(task.getOwner());
            //任务所属人名称
            flowableTodoTaskResult.setOwnerName(FlowableAssigneeFactory.getAssigneeNameByUserId(task.getOwner()));
        }
        //若任务办理人不为空，即指定了具体的人，则设置该办理人名字
        if (ObjectUtil.isNotEmpty(task.getAssignee())) {
            //获取任务办理人
            flowableTodoTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByUserId(task.getAssignee()));
            flowableTodoTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByUserId(task.getAssignee()));
        } else {
            //任务办理人为空，即没有指定具体的人，则可能是候选人或候选组，则设置候选人或候选组名字
            flowableTodoTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByTaskId(task.getId()));
            flowableTodoTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByTaskId(task.getId()));
        }

        flowableTodoTaskResult.setPriority(task.getPriority());
        flowableTodoTaskResult.setCreateTime(task.getCreateTime());
        flowableTodoTaskResult.setFormatCreateTime(PastTimeFormatUtil.formatPastTime(task.getCreateTime()));
        flowableTodoTaskResult.setClaimTime(task.getClaimTime());
        flowableTodoTaskResult.setDueDate(task.getDueDate());

        //流程实例信息
        FlowableInstanceResult procIns = flowableInstanceService.detail(task.getProcessInstanceId());
        flowableTodoTaskResult.setProcIns(procIns);

        return flowableTodoTaskResult;
    }
}
