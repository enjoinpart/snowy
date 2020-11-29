package com.cn.xiaonuo.pay.modular.alipay.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付宝交易记录查询参数
 *
 * @author xuyuxiang
 * @date 2020/8/26 10:15
 **/
@EqualsAndHashCode(callSuper = true)
@Data
public class AliPayTradeHistoryParam extends BaseParam {

    /**
     * 主键
     */
    private Long id;

    /**
     * 商家订单号
     */
    private String outTradeNo;

    /**
     * 支付宝订单号
     */
    private String tradNo;

    /**
     * 交易日期
     */
    private Date billDate;

    /**
     * 交易金额
     */
    private BigDecimal amount;

    /**
     * 商品名称
     */
    private String subject;

    /**
     * 商品描述
     */
    private String body;

    /**
     * 交易状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）
     */
    private Integer status;
}
