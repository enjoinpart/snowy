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
package vip.xiaonuo.pay.modular.alipay.service;

import cn.hutool.core.lang.Dict;
import vip.xiaonuo.pay.modular.alipay.param.AliPayParam;

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
