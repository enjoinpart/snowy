package com.cn.xiaonuo.pay.core.utils;

import cn.hutool.core.util.CharsetUtil;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayConstants;
import com.cn.xiaonuo.pay.core.pojo.AliPayBean;
import com.ijpay.alipay.AliPayApiConfig;

/**
 * 支付宝支付配置工具类
 *
 * @author xuyuxiang
 * @date 2020/8/11 17:42
 **/
public class AliPayApiConfigUtil {

    /**
     * 生成普通公钥模式支付宝支付配置
     *
     * @param aliPayBean 支付配置bean
     * @return 支付宝支付配置
     * @author xuyuxiang
     * @date 2020/8/11 17:44
     **/
    public static AliPayApiConfig genPublicKeyApiConfig(AliPayBean aliPayBean) {
        AliPayApiConfig aliPayApiConfig = AliPayApiConfig.builder();
        aliPayApiConfig.setAppId(aliPayBean.getAppId())
                .setPrivateKey(aliPayBean.getPrivateKey())
                .setAliPayPublicKey(aliPayBean.getPublicKey())
                .setCharset(CharsetUtil.UTF_8)
                .setServiceUrl(aliPayBean.getServerUrl())
                .setSignType(AlipayConstants.SIGN_TYPE_RSA2)
                .build();
        return aliPayApiConfig;
    }

    /**
     * 生成证书模式支付宝支付配置
     *
     * @param aliPayBean 支付配置bean
     * @return 支付宝支付配置
     * @author xuyuxiang
     * @date 2020/8/11 17:45
     **/
    public static AliPayApiConfig genCertApiConfig(AliPayBean aliPayBean) throws AlipayApiException {
        AliPayApiConfig aliPayApiConfig = AliPayApiConfig.builder();
        aliPayApiConfig.setAppId(aliPayBean.getAppId())
                .setPrivateKey(aliPayBean.getPrivateKey())
                .setAppCertPath(aliPayBean.getAppCertPath())
                .setAliPayCertPath(aliPayBean.getAliPayCertPath())
                .setAliPayRootCertPath(aliPayBean.getAliPayRootCertPath())
                .setCharset(CharsetUtil.UTF_8)
                .setServiceUrl(aliPayBean.getServerUrl())
                .setSignType(AlipayConstants.SIGN_TYPE_RSA2)
                .buildByCert();
        return aliPayApiConfig;
    }

}
