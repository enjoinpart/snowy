package com.cn.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import com.cn.xiaonuo.flowable.core.utils.BpmEventUtil;
import com.cn.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.delegate.event.impl.FlowableActivityEventImpl;

/**
 * 全局活动取消监听器
 *
 * @author xuyuxiang
 * @date 2020/5/29 17:55
 */
public class GlobalActCancelledListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableActivityEventImpl flowableActivityEvent = (FlowableActivityEventImpl) flowableEvent;
        DelegateExecution execution = flowableActivityEvent.getExecution();
        String eventType = flowableActivityEvent.getType().name();
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(execution, eventType);
        log.info(">>> 活动取消了........");
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
