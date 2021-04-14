package vip.xiaonuo.flowable.modular.form.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 表单管理相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_FORM_RESOURCE_EXCEPTION_ENUM)
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
    FORM_CANNOT_DELETE(4, "该表单已关联流程定义，无法删除"),

    /**
     * 表单url为空
     */
    FORM_URL_EMPTY(5, "表单url为空，请检查formUrl参数");

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
