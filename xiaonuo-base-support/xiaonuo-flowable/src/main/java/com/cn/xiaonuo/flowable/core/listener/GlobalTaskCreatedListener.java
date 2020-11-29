package com.cn.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import com.cn.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.common.engine.impl.event.FlowableEntityEventImpl;
import org.flowable.common.engine.impl.interceptor.CommandContext;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.impl.util.CommandContextUtil;

/**
 * 全局任务创建监听器
 *
 * @author xuyuxiang
 * @date 2020/5/28 15:33
 */
public class GlobalTaskCreatedListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableEntityEventImpl flowableEntityEvent = (FlowableEntityEventImpl) flowableEvent;
        String eventType = flowableEntityEvent.getType().name();
        String executionId = flowableEntityEvent.getExecutionId();
        CommandContext commandContext = CommandContextUtil.getCommandContext();
        DelegateExecution delegateExecution = CommandContextUtil.getExecutionEntityManager(commandContext).findById(executionId);
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(delegateExecution, eventType);
        log.info(">>> 任务创建了........");
    }

    @Override
    public boolean isFailOnException() {
        return false;
    }

    @Override
    public boolean isFireOnTransactionLifecycleEvent() {
        return false;
    }

    @Override
    public String getOnTransaction() {
        return null;
    }
}
