package com.cn.xiaonuo.pay.modular.alipay.controller;

import com.alipay.api.AlipayApiException;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.pay.core.controller.AbstractAliPayApiController;
import com.cn.xiaonuo.pay.core.pojo.AliPayBean;
import com.cn.xiaonuo.pay.core.utils.AliPayApiConfigUtil;
import com.cn.xiaonuo.pay.modular.alipay.param.AliPayParam;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayService;
import com.ijpay.alipay.AliPayApiConfig;
import com.ijpay.alipay.AliPayApiConfigKit;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 支付宝支付控制器
 *
 * @author xuyuxiang
 * @date 2020/8/11 11:56
 **/
@RestController
public class AliPayController extends AbstractAliPayApiController {

    @Resource
    private AliPayBean aliPayBean;

    @Resource
    private AliPayService aliPayService;

    @Override
    public AliPayApiConfig getApiConfig() throws AlipayApiException {
        AliPayApiConfig aliPayApiConfig;
        try {
            //先从缓存中获取
            aliPayApiConfig = AliPayApiConfigKit.getApiConfig(aliPayBean.getAppId());
        } catch (Exception e) {
            //没有则构建，普通公钥模式
            //aliPayApiConfig = AliPayApiConfigUtil.genPublicKeyApiConfig(aliPayBean);
            //没有则构建，证书模式
            aliPayApiConfig = AliPayApiConfigUtil.genCertApiConfig(aliPayBean);
        }
        return aliPayApiConfig;
    }

    /**
     * 获取商家订单号
     *
     * @author xuyuxiang
     * @date 2020/8/12 10:14
     **/
    @GetMapping("/aliPay/getOutTradeNo")
    public ResponseData getOutTradeNo() {
        return new SuccessResponseData(IdWorker.getIdStr());
    }

    /**
     * pc支付
     *
     * @author xuyuxiang
     * @date 2020/8/12 10:14
     **/
    @GetMapping("/aliPay/pcPay")
    public void pcPay(@Validated(AliPayParam.add.class) AliPayParam aliPayParam, HttpServletResponse response) {
        aliPayService.pcPay(aliPayParam, response);
    }

    /**
     * 扫码支付
     *
     * @author xuyuxiang
     * @date 2020/8/12 11:28
     **/
    @GetMapping("/aliPay/tradePreCreatePay")
    public void tradePreCreatePay(@Validated(BaseParam.edit.class) AliPayParam aliPayParam, HttpServletResponse response) {
        aliPayService.tradePreCreatePay(aliPayParam, response);
    }

    /**
     * wap支付
     *
     * @author xuyuxiang
     * @date 2020/8/12 14:48
     **/
    @GetMapping("/aliPay/wapPay")
    public void wapPay(@Validated(AliPayParam.add.class) AliPayParam aliPayParam, HttpServletResponse response) {
        aliPayService.wapPay(aliPayParam, response);
    }

    /**
     * 单笔转账
     *
     * @author xuyuxiang
     * @date 2020/8/13 10:07
     **/
    @Permission
    @PostMapping("/aliPay/transfer")
    @BusinessLog(title = "支付宝支付_单笔转账", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData transfer(@RequestBody @Validated(AliPayParam.add.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.transfer(aliPayParam));
    }

    /**
     * 退款
     *
     * @author xuyuxiang
     * @date 2020/8/17 16:24
     **/
    @Permission
    @PostMapping("/aliPay/tradeRefund")
    @BusinessLog(title = "支付宝支付_退款", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData tradeRefund(@RequestBody @Validated(AliPayParam.back.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.tradeRefund(aliPayParam));
    }

    /**
     * 创建订单
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:04
     **/
    @PostMapping("/aliPay/tradeCreate")
    @BusinessLog(title = "支付宝支付_创建订单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData tradeCreate(@RequestBody @Validated(AliPayParam.active.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.tradeCreate(aliPayParam));
    }

    /**
     * 撤销订单
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:04
     **/
    @PostMapping("/aliPay/tradeCancel")
    @BusinessLog(title = "支付宝支付_撤销订单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData tradeCancel(@RequestBody @Validated(AliPayParam.stop.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.tradeCancel(aliPayParam));
    }

    /**
     * 关闭订单
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:04
     **/
    @PostMapping("/aliPay/tradeClose")
    @BusinessLog(title = "支付宝支付_关闭订单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData tradeClose(@RequestBody @Validated(AliPayParam.stop.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.tradeClose(aliPayParam));
    }

    /**
     * 结算订单
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:04
     **/
    @PostMapping("/aliPay/tradeOrderSettle")
    @BusinessLog(title = "支付宝支付_结算订单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData tradeOrderSettle(@RequestBody @Validated(AliPayParam.stop.class) AliPayParam aliPayParam) {
        return new SuccessResponseData(aliPayService.tradeOrderSettle(aliPayParam));
    }

    /**
     * 通知地址
     *
     * @author xuyuxiang
     * @date 2020/8/14 10:24
     **/
    @GetMapping("/aliPay/certNotify")
    public String certNotify(HttpServletRequest request) {
        return aliPayService.certNotify(request);
    }

    /**
     * 返回地址
     *
     * @author xuyuxiang
     * @date 2020/8/14 10:24
     **/
    @GetMapping("/aliPay/certReturn")
    public void certReturn(HttpServletRequest request, HttpServletResponse response) {
        aliPayService.certReturn(request, response);
    }

}
