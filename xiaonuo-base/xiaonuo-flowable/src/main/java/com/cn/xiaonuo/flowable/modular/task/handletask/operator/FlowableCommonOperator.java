package com.cn.xiaonuo.flowable.modular.task.handletask.operator;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.core.exception.enums.ServerExceptionEnum;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import org.flowable.engine.HistoryService;
import org.flowable.engine.TaskService;
import org.flowable.engine.task.Comment;
import org.flowable.task.api.DelegationState;
import org.flowable.task.api.Task;
import org.flowable.task.api.history.HistoricTaskInstance;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 任务办理通用接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:46
 **/
@Service
public class FlowableCommonOperator {

    private static final String ASSIGNEE = "assignee";

    private static final String CANDIDATE = "candidate";

    @Resource
    private TaskService taskService;

    @Resource
    private HistoryService historyService;

    public static FlowableCommonOperator me() {
        return SpringUtil.getBean(FlowableCommonOperator.class);
    }

    /**
     * 获取任务
     *
     * @param taskId 任务id
     * @return 任务实体
     * @author xuyuxiang
     * @date 2020/8/4 17:15
     **/
    public Task queryTask(String taskId) {
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
        if (ObjectUtil.isNull(task)) {
            throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_NOT_EXIST);
        }
        return task;
    }

    /**
     * 完成单个任务
     *
     * @param taskId 任务id
     * @author xuyuxiang
     * @date 2020/8/4 17:30
     **/
    public void complete(String taskId) {
        taskService.complete(taskId);
    }

    /**
     * 批量完成任务
     *
     * @param taskIdList 任务id集合
     * @author xuyuxiang
     * @date 2020/8/4 17:30
     **/
    public void complete(List<String> taskIdList) {
        if (ObjectUtil.isNotEmpty(taskIdList)) {
            taskIdList.forEach(this::complete);
        }
    }

    /**
     * 给任务添加意见
     *
     * @param taskId  任务id
     * @param comment 意见
     * @author xuyuxiang
     * @date 2020/8/4 16:57
     **/
    @Transactional(rollbackFor = Exception.class)
    public void addComment(String taskId, String comment) {
        Task task = queryTask(taskId);
        String processInstanceId = task.getProcessInstanceId();
        Comment resultComment = taskService.addComment(taskId, processInstanceId, comment);
        resultComment.setUserId(Convert.toStr(LoginContextHolder.me().getSysLoginUserId()));
        //记录审批操作
        taskService.saveComment(resultComment);
    }

    /**
     * 添加意见并完成任务
     *
     * @param taskId   任务id
     * @param assignee 办理人id
     * @param comment  意见
     * @author xuyuxiang
     * @date 2020/8/4 17:18
     **/
    @Transactional(rollbackFor = Exception.class)
    public void addCommentAndCompleteTask(String taskId, String assignee, String comment) {
        Task task = queryTask(taskId);
        DelegationState delegationState = task.getDelegationState();
        //委托给我，我还没解决的，需要先解决
        if (ObjectUtil.isNotEmpty(delegationState) && DelegationState.PENDING.equals(delegationState)) {
            String name = LoginContextHolder.me().getSysLoginUser().getName();
            String resolveComment = BpmCommentUtil.genResolveComment(name);
            //添加解决意见
            addComment(taskId, resolveComment);
            //解决任务
            taskService.resolveTask(taskId);
            return;
        }

        if (ObjectUtil.isEmpty(assignee)) {
            //待办人为空，可能是组任务，需要先签收任务
            Long loginUserId = LoginContextHolder.me().getSysLoginUserId();
            String name = LoginContextHolder.me().getSysLoginUser().getName();
            String claimComment = BpmCommentUtil.genClaimComment(name);
            try {
                //添加签收意见
                addComment(taskId, claimComment);
                //签收
                taskService.claim(taskId, Convert.toStr(loginUserId));
            } catch (Exception e) {
                //在签收的瞬间可能被别人签收且完成，需要此时判断
                HistoricTaskInstance historicTaskInstance = historyService.createHistoricTaskInstanceQuery().taskId(taskId).singleResult();
                //获取到谁办理的
                String hisDoneAssignee = historicTaskInstance.getAssignee();
                if (ObjectUtil.isNotEmpty(hisDoneAssignee)) {
                    //办理人不为空，表示被人办理了，则抛异常签收失败
                    throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_HAS_BEEN_HANDLE);
                } else {
                    //否则的话，可能出现服务器内部异常
                    e.printStackTrace();
                    throw new ServiceException(ServerExceptionEnum.SERVER_ERROR);
                }
            }
        }
        //保存意见
        addComment(taskId, comment);
        //完成任务
        complete(taskId);
    }

    /**
     * 自动完成下一步任务，递归方法
     *
     * @author xuyuxiang
     * @date 2020/5/20 17:27
     */
    @Transactional(rollbackFor = Exception.class)
    public void smartCompleteNext(String processInstanceId) {
        //如果流程选项设置了相同处理人，且下个任务为一条任务，且指定的办理人与当前办理人相同，则自动完成
        List<Task> nextTaskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
        if (ObjectUtil.isNotEmpty(nextTaskList)) {
            //任务只有一个才自动完成
            if (nextTaskList.size() == 1) {
                Task nextTask = nextTaskList.get(0);
                //下一任务的id
                String nextTaskId = nextTask.getId();
                //下一任务的处理人
                String nextTaskAssignee = nextTask.getAssignee();
                //生成自动完成的意见
                String comment = BpmCommentUtil.genSmartCompleteComment();
                //当前登录用户
                String sysLoginUserId = Convert.toStr(LoginContextHolder.me().getSysLoginUserId());
                //任务有指定审批人才去校验
                if (ObjectUtil.isNotEmpty(nextTaskAssignee)) {
                    //判断下一审批人是否跟当前登录人相同
                    if (nextTaskAssignee.equals(sysLoginUserId)) {
                        //完成任务并设置意见
                        addCommentAndCompleteTask(nextTaskId, nextTaskAssignee, comment);
                        //递归，继续获取下一任务判断是否自动完成
                        smartCompleteNext(processInstanceId);
                    }
                }
            }
        }
    }

    /**
     * 设置下一步审批人
     *
     * @author xuyuxiang
     * @date 2020/8/5 14:59
     **/
    @Transactional(rollbackFor = Exception.class)
    public void setNextAssignee(String processInstanceId, String nextAssignee) {
        List<Task> nextTaskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
        if (ObjectUtil.isNotEmpty(nextTaskList)) {
            //任务只有一个才设置下一步审批人
            if (nextTaskList.size() == 1) {
                Task nextTask = nextTaskList.get(0);
                String nextTaskId = nextTask.getId();
                //先清空其待办人，候选人与候选组信息
                deleteTaskAssignees(nextTaskId);
                //再设置其待办人
                taskService.setAssignee(nextTaskId, nextAssignee);
            }
        }
    }

    /**
     * 设置下一步任务期限
     *
     * @author xuyuxiang
     * @date 2020/8/5 15:04
     **/
    @Transactional(rollbackFor = Exception.class)
    public void setNextDueDate(String processInstanceId, String nextDueDate) {
        List<Task> nextTaskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
        if (ObjectUtil.isNotEmpty(nextTaskList)) {
            //任务只有一个才设置下一步任务期限
            if (nextTaskList.size() == 1) {
                Task nextTask = nextTaskList.get(0);
                String nextTaskId = nextTask.getId();
                taskService.setDueDate(nextTaskId, DateUtil.parseDateTime(nextDueDate));
            }
        }
    }

    /**
     * 设置下一步任务优先级
     *
     * @author xuyuxiang
     * @date 2020/8/5 15:07
     **/
    @Transactional(rollbackFor = Exception.class)
    public void setNextPriority(String processInstanceId, Integer nextPriority) {
        List<Task> nextTaskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
        if (ObjectUtil.isNotEmpty(nextTaskList)) {
            //任务只有一个才设置下一步任务优先级
            if (nextTaskList.size() == 1) {
                Task nextTask = nextTaskList.get(0);
                String nextTaskId = nextTask.getId();
                taskService.setPriority(nextTaskId, nextPriority);
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteTaskAssignees(String taskId) {
        taskService.getIdentityLinksForTask(taskId).forEach(identityLink -> {
            //获取人员类型
            String type = identityLink.getType();
            //删除其待办人
            if (ASSIGNEE.equals(type)) {
                String userId = identityLink.getUserId();
                if (ObjectUtil.isNotEmpty(userId)) {
                    taskService.deleteUserIdentityLink(taskId, null, type);
                }
            }
            //删除其候选人与候选组
            if (CANDIDATE.equals(type)) {
                String groupId = identityLink.getGroupId();
                if (ObjectUtil.isNotEmpty(groupId)) {
                    taskService.deleteCandidateGroup(taskId, groupId);
                }
                String userId = identityLink.getUserId();
                if (ObjectUtil.isNotEmpty(userId)) {
                    taskService.deleteCandidateUser(taskId, userId);
                }
            }

        });
    }
}
