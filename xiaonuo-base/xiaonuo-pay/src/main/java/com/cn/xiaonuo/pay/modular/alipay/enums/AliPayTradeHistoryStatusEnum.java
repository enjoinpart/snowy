package com.cn.xiaonuo.pay.modular.alipay.enums;

import lombok.Getter;

/**
 * 支付宝订单状态相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:49
 **/
@Getter
public enum AliPayTradeHistoryStatusEnum {

    /**
     * 未支付
     */
    UN_PAY(0, "未支付"),

    /**
     * 已支付
     */
    PAYED(1, "已支付"),

    /**
     * 已退款
     */
    REFUND(2, "已退款"),

    /**
     * 已关闭
     */
    CLOSED(3, "已关闭"),

    /**
     * 已关闭有退款
     */
    CLOSED_WITH_REFUND(4, "已关闭有退款"),

    /**
     * 已取消
     */
    CANCELED(5, "已取消");


    private final Integer code;

    private final String message;

    AliPayTradeHistoryStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
