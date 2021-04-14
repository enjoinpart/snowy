package vip.xiaonuo.flowable.modular.option.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程选项相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/24 14:21
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_OPTION_EXCEPTION_ENUM)
public enum FlowableOptionExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程选项不存在
     */
    OPTION_NOT_EXIST(1, "流程选项不存在"),

    /**
     * 一条流程定义只能有一条选项设置
     */
    PROCESS_DEFINITION_OPTION_REPEAT(2, "一条流程定义只能有一条选项设置");

    private final Integer code;

    private final String message;

    FlowableOptionExceptionEnum(Integer code, String message) {
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
