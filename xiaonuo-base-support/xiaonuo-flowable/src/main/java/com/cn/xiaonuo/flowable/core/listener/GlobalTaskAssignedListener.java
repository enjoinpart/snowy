package com.cn.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import com.cn.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.delegate.event.impl.FlowableEntityEventImpl;

/**
 * 全局任务分配监听器
 *
 * @author xuyuxiang
 * @date 2020/5/29 17:57
 */
public class GlobalTaskAssignedListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableEntityEventImpl flowableEntityEvent = (FlowableEntityEventImpl) flowableEvent;
        DelegateExecution execution = flowableEntityEvent.getExecution();
        String eventType = flowableEntityEvent.getType().name();
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(execution, eventType);
        log.info(">>> 任务分配了........");
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
