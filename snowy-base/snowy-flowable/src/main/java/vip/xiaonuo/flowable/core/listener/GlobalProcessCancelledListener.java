package vip.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import vip.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.delegate.event.impl.FlowableProcessCancelledEventImpl;

/**
 * 全局流程取消监听器
 *
 * @author xuyuxiang
 * @date 2020/5/29 17:56
 */
public class GlobalProcessCancelledListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableProcessCancelledEventImpl processCancelledEvent = (FlowableProcessCancelledEventImpl) flowableEvent;
        DelegateExecution execution = processCancelledEvent.getExecution();
        String eventType = processCancelledEvent.getType().name();
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(execution, eventType);
        log.info(">>> 流程取消了........");
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
