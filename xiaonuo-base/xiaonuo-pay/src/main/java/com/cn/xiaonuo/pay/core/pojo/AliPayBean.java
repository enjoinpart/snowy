package com.cn.xiaonuo.pay.core.pojo;

import lombok.Data;


/**
 * 支付宝支付配置文件对应实体类
 *
 * @author xuyuxiang
 * @date 2020/8/11 11:41
 **/
@Data
public class AliPayBean {

    /**
     * 商户id
     */
    private String alipayUserId;

    /**
     * 应用编号
     */
    private String appId;

    /**
     * 应用私钥
     */
    private String privateKey;

    /**
     * 支付宝公钥
     */
    private String publicKey;

    /**
     * 应用公钥证书
     */
    private String appCertPath;

    /**
     * 支付宝公钥证书
     */
    private String aliPayCertPath;

    /**
     * 支付宝根证书
     */
    private String aliPayRootCertPath;

    /**
     * 支付宝支付网关
     */
    private String serverUrl;

    /**
     * 外网访问项目的域名
     */
    private String domain;
}
