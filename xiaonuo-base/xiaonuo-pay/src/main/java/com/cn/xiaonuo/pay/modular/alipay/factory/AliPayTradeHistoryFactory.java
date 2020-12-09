package com.cn.xiaonuo.pay.modular.alipay.factory;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateTime;
import com.alipay.api.domain.AlipayTradePagePayModel;
import com.alipay.api.domain.AlipayTradePrecreateModel;
import com.alipay.api.domain.AlipayTradeWapPayModel;
import com.cn.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryStatusEnum;

/**
 * 支付宝交易记录工厂类
 *
 * @author xuyuxiang
 * @date 2020/8/26 10:16
 **/
public class AliPayTradeHistoryFactory {

    /**
     * 将支付宝model转为交易记录model，pc支付
     *
     * @author xuyuxiang
     * @date 2020/9/2 17:37
     **/
    public static AliPayTradeHistory genAliPayTradeHistoryModelByPcPay(AlipayTradePagePayModel aliPayTradePagePayModel) {
        AliPayTradeHistory aliPayTradeHistory = new AliPayTradeHistory();
        aliPayTradeHistory.setAmount(Convert.toBigDecimal(aliPayTradePagePayModel.getTotalAmount()));
        aliPayTradeHistory.setOutTradeNo(aliPayTradePagePayModel.getOutTradeNo());
        aliPayTradeHistory.setSubject(aliPayTradePagePayModel.getSubject());
        aliPayTradeHistory.setBody(aliPayTradePagePayModel.getBody());
        aliPayTradeHistory.setBillDate(DateTime.now());
        aliPayTradeHistory.setStatus(AliPayTradeHistoryStatusEnum.UN_PAY.getCode());
        return aliPayTradeHistory;

    }

    /**
     * 将支付宝model转为交易记录model，扫码支付
     *
     * @author xuyuxiang
     * @date 2020/9/2 17:37
     **/
    public static AliPayTradeHistory genAliPayTradeHistoryModelByTradePreCreatePay(AlipayTradePrecreateModel aliPayTradePreCreateModel) {
        AliPayTradeHistory aliPayTradeHistory = new AliPayTradeHistory();
        aliPayTradeHistory.setAmount(Convert.toBigDecimal(aliPayTradePreCreateModel.getTotalAmount()));
        aliPayTradeHistory.setOutTradeNo(aliPayTradePreCreateModel.getOutTradeNo());
        aliPayTradeHistory.setSubject(aliPayTradePreCreateModel.getSubject());
        aliPayTradeHistory.setBody(aliPayTradePreCreateModel.getBody());
        aliPayTradeHistory.setBillDate(DateTime.now());
        aliPayTradeHistory.setStatus(AliPayTradeHistoryStatusEnum.UN_PAY.getCode());
        return aliPayTradeHistory;
    }

    /**
     * 将支付宝model转为交易记录model，wap支付
     *
     * @author xuyuxiang
     * @date 2020/9/2 17:37
     **/
    public static AliPayTradeHistory genAliPayTradeHistoryModelByWapPay(AlipayTradeWapPayModel aliPayTradeWapPayModel) {
        AliPayTradeHistory aliPayTradeHistory = new AliPayTradeHistory();
        aliPayTradeHistory.setAmount(Convert.toBigDecimal(aliPayTradeWapPayModel.getTotalAmount()));
        aliPayTradeHistory.setOutTradeNo(aliPayTradeWapPayModel.getOutTradeNo());
        aliPayTradeHistory.setSubject(aliPayTradeWapPayModel.getSubject());
        aliPayTradeHistory.setBody(aliPayTradeWapPayModel.getBody());
        aliPayTradeHistory.setBillDate(DateTime.now());
        aliPayTradeHistory.setStatus(AliPayTradeHistoryStatusEnum.UN_PAY.getCode());
        return aliPayTradeHistory;
    }
}
