package vip.xiaonuo.flowable.modular.category.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程分类相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/13 14:26
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_CATEGORY_EXCEPTION_ENUM)
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
