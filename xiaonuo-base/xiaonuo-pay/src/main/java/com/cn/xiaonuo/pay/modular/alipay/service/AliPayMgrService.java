package com.cn.xiaonuo.pay.modular.alipay.service;

import cn.hutool.core.lang.Dict;
import com.cn.xiaonuo.pay.modular.alipay.param.AliPayParam;

/**
 * 支付宝支付查询service接口
 *
 * @author xuyuxiang
 * @date 2020/8/11 15:56
 **/
public interface AliPayMgrService {

    /**
     * 查询当前商户信息
     *
     * @return 余额详情
     * @author xuyuxiang
     * @date 2020/8/13 11:07
     **/
    Dict userInfoQuery();

    /**
     * 查询当前商户账户余额
     *
     * @return 余额详情
     * @author xuyuxiang
     * @date 2020/8/13 11:07
     **/
    Dict accountQuery();

    /**
     * 交易查询
     *
     * @param aliPayParam 查询参数
     * @return 交易详情
     * @author xuyuxiang
     * @date 2020/8/17 10:31
     **/
    Dict tradeQuery(AliPayParam aliPayParam);

    /**
     * 退款查询
     *
     * @param aliPayParam 查询参数
     * @return 退款详情
     * @author xuyuxiang
     * @date 2020/8/19 17:58
     **/
    Dict tradeRefundQuery(AliPayParam aliPayParam);

    /**
     * 下载对账单
     *
     * @param aliPayParam 查询参数
     * @return 对账单详情
     * @author xuyuxiang
     * @date 2020/8/17 14:16
     **/
    Dict billDownloadUrlQuery(AliPayParam aliPayParam);
}
