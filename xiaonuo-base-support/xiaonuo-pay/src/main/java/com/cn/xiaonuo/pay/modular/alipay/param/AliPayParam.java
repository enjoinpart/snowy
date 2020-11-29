package com.cn.xiaonuo.pay.modular.alipay.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import com.cn.xiaonuo.core.validation.dateormonth.DateOrMonthValue;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

/**
 * 支付宝支付参数
 *
 * @author xuyuxiang
 * @date 2020/8/11 15:59
 **/
@EqualsAndHashCode(callSuper = true)
@Data
public class AliPayParam extends BaseParam {

    /**
     * 支付金额
     */
    @NotNull(message = "支付金额不能为空，请检查amount参数", groups = {add.class, edit.class, back.class, active.class})
    @DecimalMin(message = "支付金额格式错误，请检查amount参数", groups = {add.class, edit.class, back.class, active.class}, value = "0.01")
    private BigDecimal amount;

    /**
     * 商家订单号
     */
    @NotBlank(message = "商家订单号不能为空，请检查outTradeNo参数", groups = {trace.class, add.class, back.class})
    private String outTradeNo;

    /**
     * 支付宝订单号
     */
    @NotBlank(message = "支付宝订单号不能为空，请检查tradeNo参数", groups = {back.class, stop.class})
    private String tradeNo;

    /**
     * 交易日期
     */
    @DateOrMonthValue(message = "交易日期格式不正确，请检查billDate参数", groups = {export.class})
    private String billDate;

    /**
     * 原因
     */
    @NotBlank(message = "原因不能为空，请检查reason参数", groups = {back.class})
    private String reason;

    /**
     * 买家支付宝账号
     */
    @NotBlank(message = "买家支付宝账号不能为空，请检查buyerLogonId参数", groups = {active.class})
    private String buyerLogonId;
}
