package vip.xiaonuo.flowable.modular.instance.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程实例相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/28 10:45
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_INSTANCE_EXCEPTION_ENUM)
public enum FlowableInstanceExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程实例不存在
     */
    INSTANCE_NOT_EXIST(1, "流程实例不存在"),

    /**
     * 流程实例无定义
     */
    INSTANCE_HAS_NO_DEFINITION(2, "流程实例无定义"),

    /**
     * 流程实例已处于挂起状态
     */
    INSTANCE_SUSPEND(3, "流程实例已处于挂起状态"),

    /**
     * 流程实例已处于激活状态
     */
    INSTANCE_ACTIVE(4, "流程实例已处于激活状态"),

    /**
     * 已挂起的流程实例无法结束
     */
    INSTANCE_SUSPEND_CAN_NOT_END(5, "已挂起的流程实例无法结束，请激活后再结束");

    private final Integer code;

    private final String message;

    FlowableInstanceExceptionEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public Integer getCode() {
        return ExpEnumCodeFactory.getExpEnumCode(this.getClass(), code);
    }

    @Override
    public String getMessage() {
        return message;
    }

}
