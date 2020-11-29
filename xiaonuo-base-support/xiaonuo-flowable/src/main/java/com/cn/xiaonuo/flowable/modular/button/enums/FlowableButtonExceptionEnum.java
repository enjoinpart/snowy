package com.cn.xiaonuo.flowable.modular.button.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程按钮相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/26 16:26
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_BUTTON_EXCEPTION_ENUM)
public enum FlowableButtonExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程按钮不存在
     */
    BUTTON_NOT_EXIST(1, "流程按钮不存在"),
    /**
     * 同一节点按钮配置只能有一条
     */
    ACT_FORM_REPEAT(2, "同一节点按钮配置只能有一条");

    private final Integer code;

    private final String message;

    FlowableButtonExceptionEnum(Integer code, String message) {
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
