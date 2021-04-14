package vip.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import vip.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.delegate.event.impl.FlowableActivityEventImpl;

/**
 * 全局活动创建监听器
 *
 * @author xuyuxiang
 * @date 2020/5/28 15:33
 */
public class GlobalActStartedListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableActivityEventImpl flowableActivityEvent = (FlowableActivityEventImpl) flowableEvent;
        DelegateExecution execution = flowableActivityEvent.getExecution();
        String eventType = flowableActivityEvent.getType().name();
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(execution, eventType);
        log.info(">>> 活动开始了........");
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
