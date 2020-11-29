package com.cn.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.flowable.core.enums.DelegateStatusEnum;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.option.service.FlowableOptionService;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableSubmitTaskService;
import com.cn.xiaonuo.flowable.core.enums.DelegateStatusEnum;
import com.cn.xiaonuo.flowable.core.utils.BpmCommentUtil;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableSubmitTaskService;
import org.flowable.engine.FormService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Map;

/**
 * 任务提交service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
@Service
public class FlowableSubmitTaskServiceImpl implements FlowableSubmitTaskService {

    /**
     * 使用此方式解决formService重名问题
     **/
    private final FormService formService;

    @Resource
    private FlowableOptionService flowableOptionService;

    @Resource
    private TaskService taskService;

    public FlowableSubmitTaskServiceImpl(FormService formService) {
        this.formService = formService;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void submit(String taskId, String comment, Map<String, String> variables, String nextAssignee,
                       String nextDueDate,
                       Integer nextPriority) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //获取流程定义id
        String processDefinitionId = task.getProcessDefinitionId();
        //获取流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //获取当前操作人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成提交意见
        comment = BpmCommentUtil.genSubmitComment(name, comment);
        //给任务添加意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        if (ObjectUtil.isEmpty(variables)) {
            variables = CollectionUtil.newHashMap();
        }
        //如果是委托任务，需解决任务
        if (ObjectUtil.isNotNull(task.getDelegationState())) {
            if (DelegateStatusEnum.PENDING.toString().equals(task.getDelegationState().name())) {
                //解决任务并设置参数
                taskService.resolveTask(taskId, BeanUtil.beanToMap(variables));
            }
        } else {
            //提交任务并设置参数
            formService.submitTaskFormData(taskId, variables);
        }
        //如果该流程设置了跳过相同处理人则自动完成
        boolean smartComplete = flowableOptionService.getFlowableOptionSmartComplete(processDefinitionId);
        if (smartComplete) {
            FlowableCommonOperator.me().smartCompleteNext(processInstanceId);
        }

        //如果设定了下一任务审批人，则设置该审批人
        if (ObjectUtil.isNotEmpty(nextAssignee)) {
            FlowableCommonOperator.me().setNextAssignee(processInstanceId, nextAssignee);
        }

        //如果设定了下一任务审批期限，则设置审批期限
        if (ObjectUtil.isNotEmpty(nextDueDate)) {
            FlowableCommonOperator.me().setNextDueDate(processInstanceId, nextDueDate);
        }

        //如果设定了下一任务审批优先级，则设置审批优先级
        if (ObjectUtil.isNotEmpty(nextPriority)) {
            FlowableCommonOperator.me().setNextPriority(processInstanceId, nextPriority);
        }
    }

    @Override
    public void save(String taskId, Map<String, String> variables) {
        if (ObjectUtil.isEmpty(variables)) {
            variables = CollectionUtil.newHashMap();
        }
        formService.saveFormData(taskId, variables);
    }
}
