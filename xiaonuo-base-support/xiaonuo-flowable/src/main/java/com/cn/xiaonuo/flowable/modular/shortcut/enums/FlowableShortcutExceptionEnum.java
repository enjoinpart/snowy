package com.cn.xiaonuo.flowable.modular.shortcut.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程申请入口相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/6/30 12:05
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_SHORTCUT_EXCEPTION_ENUM)
public enum FlowableShortcutExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程申请入口不存在
     */
    SHORTCUT_NOT_EXIST(1, "流程申请入口不存在"),

    /**
     * 流程定义key重复
     */
    SHORTCUT_CODE_REPEAT(2, "流程定义key重复，请检查key参数"),

    /**
     * 流程申请入口名称重复
     */
    SHORTCUT_NAME_REPEAT(3, "流程申请入口名称重复，请检查name参数");

    private final Integer code;

    private final String message;

    FlowableShortcutExceptionEnum(Integer code, String message) {
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
