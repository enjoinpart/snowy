package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import vip.xiaonuo.flowable.modular.task.handletask.param.FlowableHandleTaskParam;
import vip.xiaonuo.flowable.modular.task.handletask.service.*;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 任务办理service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 22:16
 */
@Service
public class FlowableHandleTaskServiceImpl implements FlowableHandleTaskService {

    @Resource
    private FlowableStartProcessService flowableStartProcessService;

    @Resource
    private FlowableSubmitTaskService flowableSubmitTaskService;

    @Resource
    private FlowableBackTaskService flowableBackTaskService;

    @Resource
    private FlowableTurnTaskService flowableTurnTaskService;

    @Resource
    private FlowableEntrustTaskService flowableEntrustTaskService;

    @Resource
    private FlowableJumpTaskService flowableJumpTaskService;

    @Resource
    private FlowableEndTaskService flowableEndTaskService;

    @Resource
    private FlowableSuspendTaskService flowableSuspendTaskService;

    @Resource
    private FlowableAddSignTaskService flowableAddSignTaskService;

    @Resource
    private FlowableDeleteSignTaskService flowableDeleteSignTaskService;

    @Resource
    private FlowableDataTaskService flowableDataTaskService;

    @Override
    public void start(FlowableHandleTaskParam flowableHandleTaskParam) {
        String processDefinitionId = flowableHandleTaskParam.getProcessDefinitionId();
        Map<String, String> variables = flowableHandleTaskParam.getVariables();
        String nextAssignee = flowableHandleTaskParam.getNextAssignee();
        String nextDueDate = flowableHandleTaskParam.getNextDueDate();
        Integer nextPriority = flowableHandleTaskParam.getNextPriority();
        flowableStartProcessService.start(processDefinitionId, variables, nextAssignee, nextDueDate, nextPriority);
    }

    @Override
    public void submit(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        String comment = flowableHandleTaskParam.getComment();
        Map<String, String> variables = flowableHandleTaskParam.getVariables();
        String nextAssignee = flowableHandleTaskParam.getNextAssignee();
        String nextDueDate = flowableHandleTaskParam.getNextDueDate();
        Integer nextPriority = flowableHandleTaskParam.getNextPriority();
        flowableSubmitTaskService.submit(taskId, comment, variables, nextAssignee, nextDueDate, nextPriority);
    }

    @Override
    public void save(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        Map<String, String> variables = flowableHandleTaskParam.getVariables();
        flowableSubmitTaskService.save(taskId, variables);
    }

    @Override
    public void back(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        String targetActId = flowableHandleTaskParam.getTargetActId();
        String targetActName = flowableHandleTaskParam.getTargetActName();
        String comment = flowableHandleTaskParam.getComment();
        flowableBackTaskService.back(taskId, targetActId, targetActName, comment);
    }

    @Override
    public void turn(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        List<String> assigneeList = flowableHandleTaskParam.getAssigneeList();
        flowableTurnTaskService.turnTask(taskId, assigneeList);
    }

    @Override
    public void entrust(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        String assignee = flowableHandleTaskParam.getAssignee();
        String comment = flowableHandleTaskParam.getComment();
        flowableEntrustTaskService.entrust(taskId, assignee, comment);
    }

    @Override
    public void jump(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        String targetActId = flowableHandleTaskParam.getTargetActId();
        String targetActName = flowableHandleTaskParam.getTargetActName();
        String comment = flowableHandleTaskParam.getComment();
        flowableJumpTaskService.jump(taskId, targetActId, targetActName, comment);
    }

    @Override
    public void end(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        String comment = flowableHandleTaskParam.getComment();
        flowableEndTaskService.end(taskId, comment);
    }

    @Override
    public void suspend(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        flowableSuspendTaskService.suspend(taskId);
    }

    @Override
    public void addSign(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        List<String> assigneeList = flowableHandleTaskParam.getAssigneeList();
        String comment = flowableHandleTaskParam.getComment();
        flowableAddSignTaskService.addSign(taskId, assigneeList, comment);
    }

    @Override
    public void deleteSign(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        List<String> assigneeList = flowableHandleTaskParam.getAssigneeList();
        String comment = flowableHandleTaskParam.getComment();
        flowableDeleteSignTaskService.deleteSign(taskId, assigneeList, comment);
    }

    @Override
    public Map<String, Object> taskData(FlowableHandleTaskParam flowableHandleTaskParam) {
        String taskId = flowableHandleTaskParam.getTaskId();
        return flowableDataTaskService.taskData(taskId);
    }
}
