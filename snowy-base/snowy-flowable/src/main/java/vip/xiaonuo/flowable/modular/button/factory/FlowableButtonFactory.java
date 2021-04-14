package vip.xiaonuo.flowable.modular.button.factory;

import vip.xiaonuo.core.enums.YesOrNotEnum;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;

/**
 * 流程按钮工厂类
 *
 * @author xuyuxiang
 * @date 2020/6/8 11:56
 */
public class FlowableButtonFactory {

    /**
     * 构造默认的按钮结果集，用于某些节点没配置按钮信息时，默认拥有提交、保存和退回按钮
     *
     * @author xuyuxiang
     * @date 2020/6/8 11:57
     */
    public static FlowableButtonResult genFlowableButtonResult() {
        FlowableButtonResult flowableButtonResult = new FlowableButtonResult();
        flowableButtonResult.setSubmit(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setSave(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setBack(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setTurn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setNext(YesOrNotEnum.N.getCode());
        flowableButtonResult.setEntrust(YesOrNotEnum.N.getCode());
        flowableButtonResult.setEnd(YesOrNotEnum.N.getCode());
        flowableButtonResult.setTrace(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setSuspend(YesOrNotEnum.N.getCode());
        flowableButtonResult.setJump(YesOrNotEnum.N.getCode());
        flowableButtonResult.setAddSign(YesOrNotEnum.N.getCode());
        flowableButtonResult.setDeleteSign(YesOrNotEnum.N.getCode());
        return flowableButtonResult;
    }
}
