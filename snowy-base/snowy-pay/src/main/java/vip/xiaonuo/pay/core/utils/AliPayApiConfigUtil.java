/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.pay.core.utils;

import cn.hutool.core.util.CharsetUtil;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayConstants;
import vip.xiaonuo.pay.core.pojo.AliPayBean;
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
