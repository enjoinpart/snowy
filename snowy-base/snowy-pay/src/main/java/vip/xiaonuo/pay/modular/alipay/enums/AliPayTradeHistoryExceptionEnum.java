package vip.xiaonuo.pay.modular.alipay.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.pay.core.consts.PayExpEnumConstant;

/**
 * 支付宝支付相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:49
 **/
@ExpEnumType(module = PayExpEnumConstant.SNOWY_PAY_MODULE_EXP_CODE, kind = PayExpEnumConstant.ALIPAY_HISTORY_EXCEPTION_ENUM)
public enum AliPayTradeHistoryExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 订单不存在
     */
    TRADE_HISTORY_NOT_EXIST(1, "订单不存在"),

    /**
     * 订单金额不正确
     */
    TRADE_HISTORY_AMOUNT_ERROR(2, "订单金额不正确");

    private final Integer code;

    private final String message;

    AliPayTradeHistoryExceptionEnum(Integer code, String message) {
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
