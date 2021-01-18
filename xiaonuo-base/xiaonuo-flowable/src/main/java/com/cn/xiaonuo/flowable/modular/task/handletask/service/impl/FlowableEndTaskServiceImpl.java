package com.cn.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableEndTaskService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 任务终止service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:35
 **/
@Service
public class FlowableEndTaskServiceImpl implements FlowableEndTaskService {

    @Resource
    private TaskService taskService;

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void end(String taskId, String comment) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //获取流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //获取当前操作人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成终止意见
        comment = BpmCommentUtil.genEndComment(name, comment);
        //添加意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        //获取当前操作人id
        Long userId = LoginContextHolder.me().getSysLoginUser().getId();
        String assignee = task.getAssignee();
        if(ObjectUtil.isEmpty(assignee)) {
            //设置办理人为当前用户
            taskService.setAssignee(taskId, Convert.toStr(userId));
        }
        //结束流程
        runtimeService.deleteProcessInstance(processInstanceId, comment);
    }
}
