package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableJumpTaskService;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import org.flowable.engine.RuntimeService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;

import javax.annotation.Resource;

/**
 * 任务跳转service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:36
 **/
@Service
public class FlowableJumpTaskServiceImpl implements FlowableJumpTaskService {

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void jump(String taskId, String targetActId, String targetActName, String comment) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //当前节点id
        String currentActId = task.getTaskDefinitionKey();
        //获取流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //获取当前操作人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成跳转意见
        comment = BpmCommentUtil.genJumpComment(name, targetActName, comment);
        //添加意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        //执行跳转操作
        runtimeService.createChangeActivityStateBuilder()
                .processInstanceId(processInstanceId)
                .moveActivityIdTo(currentActId, targetActId).changeState();
    }
}
