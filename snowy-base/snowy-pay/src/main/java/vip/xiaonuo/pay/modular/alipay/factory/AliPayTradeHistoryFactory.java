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
package vip.xiaonuo.pay.modular.alipay.factory;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateTime;
import com.alipay.api.domain.AlipayTradePagePayModel;
import com.alipay.api.domain.AlipayTradePrecreateModel;
import com.alipay.api.domain.AlipayTradeWapPayModel;
import vip.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import vip.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryStatusEnum;

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
