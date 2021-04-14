package vip.xiaonuo.flowable.core.listener;

import cn.hutool.log.Log;
import vip.xiaonuo.flowable.core.utils.BpmEventUtil;
import org.flowable.common.engine.api.delegate.event.FlowableEvent;
import org.flowable.common.engine.api.delegate.event.FlowableEventListener;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.engine.delegate.event.impl.FlowableSequenceFlowTakenEventImpl;

/**
 * 全局连接线监听器
 *
 * @author xuyuxiang
 * @date 2020/5/29 17:57
 */
public class GlobalSequenceflowTakenListener implements FlowableEventListener {

    private static final Log log = Log.get();

    @Override
    public void onEvent(FlowableEvent flowableEvent) {
        FlowableSequenceFlowTakenEventImpl flowableSequenceFlowTakenEvent = (FlowableSequenceFlowTakenEventImpl) flowableEvent;
        DelegateExecution execution = flowableSequenceFlowTakenEvent.getExecution();
        String eventType = flowableSequenceFlowTakenEvent.getType().name();
        //根据事件类型获取脚本并执行
        BpmEventUtil.getAndExecuteScript(execution, eventType);
        log.info(">>> 连接线事件........");
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
