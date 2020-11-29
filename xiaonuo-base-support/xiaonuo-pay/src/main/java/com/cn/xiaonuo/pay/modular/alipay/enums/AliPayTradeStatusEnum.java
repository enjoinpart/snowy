package com.cn.xiaonuo.pay.modular.alipay.enums;

import lombok.Getter;

/**
 * 支付宝支付状态相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:49
 **/
@Getter
public enum AliPayTradeStatusEnum {

    /**
     * 支付成功
     */
    TRADE_SUCCESS("TRADE_SUCCESS", "支付成功"),

    /**
     * 支付完成
     */
    TRADE_FINISHED("TRADE_FINISHED", "支付完成");


    private final String code;

    private final String message;

    AliPayTradeStatusEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
