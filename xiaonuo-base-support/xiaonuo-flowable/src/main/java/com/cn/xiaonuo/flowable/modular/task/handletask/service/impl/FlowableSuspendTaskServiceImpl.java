package com.cn.xiaonuo.flowable.modular.task.handletask.service.impl;

import com.cn.xiaonuo.flowable.modular.instance.param.FlowableInstanceParam;
import com.cn.xiaonuo.flowable.modular.instance.service.FlowableInstanceService;
import com.cn.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import com.cn.xiaonuo.flowable.modular.task.handletask.service.FlowableSuspendTaskService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 任务挂起service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 16:37
 **/
@Service
public class FlowableSuspendTaskServiceImpl implements FlowableSuspendTaskService {

    @Resource
    private FlowableInstanceService flowableInstanceService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void suspend(String taskId) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //获取流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //挂起流程
        FlowableInstanceParam flowableInstanceParam = new FlowableInstanceParam();
        flowableInstanceParam.setId(processInstanceId);
        flowableInstanceService.activeOrSuspend(flowableInstanceParam, true);
    }
}
