package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableTurnTaskService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;

import javax.annotation.Resource;
import java.util.List;

/**
 * 任务转办service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
@Service
public class FlowableTurnTaskServiceImpl implements FlowableTurnTaskService {

    @Resource
    private TaskService taskService;

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void turnTask(String taskId, List<String> assigneeList) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //删除其办理人及候选人候选组
        FlowableCommonOperator.me().deleteTaskAssignees(taskId);
        //获取要转办的人或角色的数量
        int size = assigneeList.size();
        //如果数量是1
        if (size == 1) {
            //判断是否是用户
            boolean isUser = FlowableAssigneeFactory.isUser(assigneeList.get(0));
            //如果是用户则直接设置办理人
            if (isUser) {
                taskService.setAssignee(taskId, assigneeList.get(0));
                return;
            }
        }
        //遍历
        assigneeList.forEach(userOrRoleId -> {
            //判断是否是用户
            boolean isUser = FlowableAssigneeFactory.isUser(userOrRoleId);
            //如果是用户则设置候选人
            if (isUser) {
                taskService.addCandidateUser(taskId, userOrRoleId);
            }
            //判断是否是角色
            boolean isRole = FlowableAssigneeFactory.isRole(userOrRoleId);
            if (isRole) {
                //如果是角色则设置候选组
                taskService.addCandidateGroup(taskId, userOrRoleId);
            }
        });
    }
}
