package com.cn.xiaonuo.flowable.modular.draft.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 申请草稿管理相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_DRAFT_EXCEPTION_ENUM)
public enum FlowableDraftExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 申请草稿不存在
     */
    DRAFT_NOT_EXIST(1, "表单不存在");

    private final Integer code;

    private final String message;

    FlowableDraftExceptionEnum(Integer code, String message) {
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
