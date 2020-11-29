package com.cn.xiaonuo.flowable.modular.category.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程分类相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/13 14:26
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_CATEGORY_EXCEPTION_ENUM)
public enum FlowableCategoryExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程分类不存在
     */
    CATEGORY_NOT_EXIST(1, "流程分类不存在"),

    /**
     * 流程分类编码重复
     */
    CATEGORY_CODE_REPEAT(2, "流程分类编码重复，请检查code参数"),

    /**
     * 流程分类名称重复
     */
    CATEGORY_NAME_REPEAT(3, "流程分类名称重复，请检查name参数"),

    /**
     * 该分类下有流程定义
     */
    CATEGORY_CANNOT_DELETE(4, "该分类下有流程定义，无法删除");

    private final Integer code;

    private final String message;

    FlowableCategoryExceptionEnum(Integer code, String message) {
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
