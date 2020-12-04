package com.cn.xiaonuo.pay.modular.alipay.service.impl;

import cn.hutool.core.lang.Dict;
import cn.hutool.log.Log;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.pay.core.consts.AliPayConstant;
import com.cn.xiaonuo.pay.core.pojo.AliPayBean;
import com.cn.xiaonuo.pay.core.utils.AliPayModelGenUtil;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayExceptionEnum;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryStatusEnum;
import com.cn.xiaonuo.pay.modular.alipay.param.AliPayParam;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayMgrService;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayService;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayTradeHistoryService;
import com.ijpay.alipay.AliPayApi;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 支付宝支付查询Service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/13 11:05
 **/
@Service
public class AliPayMgrServiceImpl implements AliPayMgrService {

    private static final Log log = Log.get();

    @Resource
    private AliPayBean aliPayBean;

    @Resource
    private AliPayService aliPayService;

    @Resource
    private AliPayTradeHistoryService aliPayTradeHistoryService;

    @Override
    public Dict userInfoQuery() {
        try {
            String resultStr = AliPayApi.certificateExecute(AliPayModelGenUtil.getAliPayUserInfoShareRequest(), null).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_USER_INFO_SHARE_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝查询异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.QUERY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict accountQuery() {
        try {
            String resultStr = AliPayApi.accountQueryToResponse(AliPayModelGenUtil.getAliPayFundAccountQueryModel(aliPayBean), null).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_ACCOUNT_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝查询异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.QUERY_ERROR.getCode(), e.getMessage());
        }
    }


    @Override
    public Dict tradeQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.tradeQueryToResponse(AliPayModelGenUtil.getAliPayTradeQueryModel(aliPayParam)).getBody();
            Dict dict = aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_TRADE_RESPONSE);
            //获取商家订单号
            String outTradeNo = aliPayParam.getOutTradeNo();
            //获取订单状态
            String tradeStatus = (String) dict.get(AliPayConstant.TRADE_STATUS);
            //如果支付成功，则将其更新
            if(AliPayConstant.TRADE_STATUS_SUCCESS_VALUE.equals(tradeStatus)) {
                aliPayTradeHistoryService.changeStatus(outTradeNo, null, AliPayTradeHistoryStatusEnum.PAYED.getCode());
            }
            return dict;
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict tradeRefundQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.tradeRefundQueryToResponse(AliPayModelGenUtil.getAliPayTradeRefundQueryModel(aliPayParam)).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_REFUND_TRADE_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict billDownloadUrlQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.billDownloadUrlQueryToResponse(AliPayModelGenUtil
                    .getAliPayDataDataServiceBillDownloadUrlQueryModel(aliPayParam)).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_BILL_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }
}
