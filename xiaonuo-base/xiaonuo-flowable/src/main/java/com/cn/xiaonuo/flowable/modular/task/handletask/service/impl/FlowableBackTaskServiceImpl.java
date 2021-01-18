package com.cn.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableBackTaskService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 任务退回service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:38
 **/
@Service
public class FlowableBackTaskServiceImpl implements FlowableBackTaskService {

    @Resource
    private TaskService taskService;

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void back(String taskId, String targetActId, String targetActName, String comment) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //当前节点id
        String currentActId = task.getTaskDefinitionKey();
        //获取流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //获取当前操作人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成退回意见
        comment = BpmCommentUtil.genBackComment(name, targetActName, comment);
        //添加意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        //获取当前操作人id
        Long userId = LoginContextHolder.me().getSysLoginUser().getId();
        String assignee = task.getAssignee();
        if(ObjectUtil.isEmpty(assignee)) {
            //设置办理人为当前用户
            taskService.setAssignee(taskId, Convert.toStr(userId));
        }
        //执行退回操作
        runtimeService.createChangeActivityStateBuilder()
                .processInstanceId(processInstanceId)
                .moveActivityIdTo(currentActId, targetActId).changeState();
    }
}
