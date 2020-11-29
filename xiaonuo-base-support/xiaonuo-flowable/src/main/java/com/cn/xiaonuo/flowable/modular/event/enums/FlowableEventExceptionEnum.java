package com.cn.xiaonuo.flowable.modular.event.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程事件相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/26 16:40
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_EVENT_EXCEPTION_ENUM)
public enum FlowableEventExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程事件不存在
     */
    EVENT_NOT_EXIST(1, "流程事件不存在"),

    /**
     * 活动节点id为空
     */
    ACT_ID_EMPTY(2, "活动节点id为空，请检查actId参数"),

    /**
     * 活动节点名称为空
     */
    ACT_NAME_EMPTY(3, "活动节点名称为空，请检查actName参数");

    private final Integer code;

    private final String message;

    FlowableEventExceptionEnum(Integer code, String message) {
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
