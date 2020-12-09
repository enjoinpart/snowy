package com.cn.xiaonuo.flowable.modular.script.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程脚本相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/17 17:20
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_SCRIPT_EXCEPTION_ENUM)
public enum FlowableScriptExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 脚本不存在
     */
    SCRIPT_NOT_EXIST(1, "脚本不存在");

    private final Integer code;

    private final String message;

    FlowableScriptExceptionEnum(Integer code, String message) {
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
