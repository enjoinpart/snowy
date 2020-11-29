package com.cn.xiaonuo.flowable.modular.form.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 表单管理相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_FORM_RESOURCE_EXCEPTION_ENUM)
public enum FlowableFormResourceExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 表单不存在
     */
    FORM_RESOURCE_NOT_EXIST(1, "表单不存在"),

    /**
     * 表单编码重复
     */
    FORM_RESOURCE_CODE_REPEAT(2, "表单编码重复，请检查code参数"),

    /**
     * 表单名称重复
     */
    FORM_RESOURCE_NAME_REPEAT(3, "表单名称重复，请检查name参数"),

    /**
     * 该表单已关联流程定义
     */
    FORM_CANNOT_DELETE(4, "该表单已关联流程定义，无法删除");

    private final Integer code;

    private final String message;

    FlowableFormResourceExceptionEnum(Integer code, String message) {
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
