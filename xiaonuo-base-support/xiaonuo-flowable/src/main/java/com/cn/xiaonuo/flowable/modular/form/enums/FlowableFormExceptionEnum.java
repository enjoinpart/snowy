package com.cn.xiaonuo.flowable.modular.form.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程表单相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/26 16:59
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_FORM_EXCEPTION_ENUM)
public enum FlowableFormExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 表单不存在
     */
    FORM_NOT_EXIST(1, "表单不存在"),

    /**
     * 该流程定义无启动表单
     */
    FORM_START_NOT_EXIST(2, "该流程定义无启动表单"),

    /**
     * 该流程定义无全局表单
     */
    FORM_GLOBAL_NOT_EXIST(3, "该流程定义无全局表单"),

    /**
     * 活动节点名称为空
     */
    FORM_ACT_NAME_EMPTY(4, "活动节点名称为空"),

    /**
     * 活动节点名称重复
     */
    FORM_ACT_NAME_REPEAT(5, "活动节点名称重复"),

    /**
     * 活动节点Id为空
     */
    FORM_ACT_ID_EMPTY(6, "活动节点Id为空"),

    /**
     * 活动节点Id重复
     */
    FORM_ACT_ID_REPEAT(7, "活动节点Id重复");

    private final Integer code;

    private final String message;

    FlowableFormExceptionEnum(Integer code, String message) {
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
