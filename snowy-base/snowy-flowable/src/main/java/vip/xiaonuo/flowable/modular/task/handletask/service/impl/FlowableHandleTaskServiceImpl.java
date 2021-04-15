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
