package vip.xiaonuo.pay.core.controller;

import com.alipay.api.AlipayApiException;
import com.ijpay.alipay.AliPayApiConfig;

/**
 * 支付宝支付控制器抽象类
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:46
 **/
public abstract class AbstractAliPayApiController {

    /**
     * 获取支付宝支付配置
     *
     * @return 支付宝支付配置
     * @throws AlipayApiException 获取支付宝支付配置异常
     * @author xuyuxiang
     * @date 2020/8/11 16:56
     **/
    public abstract AliPayApiConfig getApiConfig() throws AlipayApiException;
}
