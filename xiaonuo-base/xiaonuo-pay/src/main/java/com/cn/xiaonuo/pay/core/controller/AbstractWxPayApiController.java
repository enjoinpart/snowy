package com.cn.xiaonuo.pay.core.controller;

import com.ijpay.wxpay.WxPayApiConfig;

/**
 * 微信支付控制器抽象类
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:47
 **/
public abstract class AbstractWxPayApiController {

    /**
     * 获取微信支付配置
     *
     * @return 微信支付配置
     * @author xuyuxiang
     * @date 2020/8/11 16:56
     **/
    public abstract WxPayApiConfig getApiConfig();
}
