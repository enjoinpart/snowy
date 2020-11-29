package com.cn.xiaonuo.pay.modular.alipay.entity;

import com.cn.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 支付宝支付交易记录实体类
 *
 * @author xuyuxiang
 * @date 2020/8/26 9:51
 **/
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("pay_ali_trade_history")
public class AliPayTradeHistory extends BaseEntity {

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 商家订单号
     */
    private String outTradeNo;

    /**
     * 支付宝订单号
     */
    private String tradeNo;

    /**
     * 交易日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
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
