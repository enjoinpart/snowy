package com.cn.xiaonuo.flowable.modular.task.handletask.service.impl;

import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableEntrustTaskService;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableEntrustTaskService;
import org.flowable.engine.TaskService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 任务委托service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:35
 **/
@Service
public class FlowableEntrustTaskServiceImpl implements FlowableEntrustTaskService {

    @Resource
    private TaskService taskService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void entrust(String taskId, String assignee, String comment) {
        //校验任务是否存在
        FlowableCommonOperator.me().queryTask(taskId);
        //要委托的人的姓名
        String assigneeName = FlowableAssigneeFactory.getAssigneeNameByUserId(assignee);
        //获取当前操作人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成委托意见
        comment = BpmCommentUtil.genEntrustComment(name, assigneeName, comment);
        //添加意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        //执行委托操作
        taskService.delegateTask(taskId, assignee);
    }
}
