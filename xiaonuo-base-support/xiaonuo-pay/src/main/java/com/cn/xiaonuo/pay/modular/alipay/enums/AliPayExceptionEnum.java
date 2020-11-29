package com.cn.xiaonuo.pay.modular.alipay.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.pay.core.consts.PayExpEnumConstant;

/**
 * 支付宝支付相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:49
 **/
@ExpEnumType(module = PayExpEnumConstant.XIAONUO_PAY_MODULE_EXP_CODE, kind = PayExpEnumConstant.ALIPAY_EXCEPTION_ENUM)
public enum AliPayExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 控制器需要继承AbstractAliPayApiController
     */
    CONTROLLER_ERROR(1, "控制器需要继承AbstractAliPayApiController"),

    /**
     * 商户号不一致
     */
    APP_ID_ERROR(2, "商户号不一致"),

    /**
     * 支付失败
     */
    PAY_ERROR(3, "支付失败"),

    /**
     * 查询失败
     */
    QUERY_ERROR(4, "查询失败");

    private final Integer code;

    private final String message;

    AliPayExceptionEnum(Integer code, String message) {
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
