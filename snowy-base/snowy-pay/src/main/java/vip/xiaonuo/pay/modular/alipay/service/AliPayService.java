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
import cn.hutool.json.JSONObject;
import vip.xiaonuo.pay.modular.alipay.param.AliPayParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 支付宝支付service接口
 *
 * @author xuyuxiang
 * @date 2020/8/11 15:56
 **/
public interface AliPayService {

    /**
     * pc支付
     *
     * @param aliPayParam 支付参数
     * @param response    响应
     * @author xuyuxiang
     * @date 2020/8/11 16:00
     **/
    void pcPay(AliPayParam aliPayParam, HttpServletResponse response);

    /**
     * 扫码支付
     *
     * @param aliPayParam 支付参数
     * @param response    响应
     * @author xuyuxiang
     * @date 2020/8/12 10:16
     **/
    void tradePreCreatePay(AliPayParam aliPayParam, HttpServletResponse response);

    /**
     * wap支付
     *
     * @param aliPayParam 支付参数
     * @param response    响应
     * @author xuyuxiang
     * @date 2020/8/12 14:49
     **/
    void wapPay(AliPayParam aliPayParam, HttpServletResponse response);

    /**
     * 单笔转账
     *
     * @param aliPayParam 转账参数
     * @return 支付成功的结果
     * @author xuyuxiang
     * @date 2020/8/12 15:34
     **/
    Dict transfer(AliPayParam aliPayParam);

    /**
     * 退款
     *
     * @param aliPayParam 退款参数
     * @return 退款详情
     * @author xuyuxiang
     * @date 2020/8/17 16:25
     **/
    Dict tradeRefund(AliPayParam aliPayParam);

    /**
     * 创建订单
     *
     * @param aliPayParam 创建参数
     * @return 创建结果
     * @author xuyuxiang
     * @date 2020/8/19 15:14
     **/
    Dict tradeCreate(AliPayParam aliPayParam);

    /**
     * 撤销订单
     *
     * @param aliPayParam 撤销参数
     * @return 撤销结果
     * @author xuyuxiang
     * @date 2020/8/19 15:14
     **/
    Dict tradeCancel(AliPayParam aliPayParam);

    /**
     * 关闭订单
     *
     * @param aliPayParam 关闭参数
     * @return 关闭结果
     * @author xuyuxiang
     * @date 2020/8/19 15:15
     **/
    Dict tradeClose(AliPayParam aliPayParam);

    /**
     * 结算订单
     *
     * @param aliPayParam 结算参数
     * @return 结算结果
     * @author xuyuxiang
     * @date 2020/8/19 15:15
     **/
    Dict tradeOrderSettle(AliPayParam aliPayParam);

    /**
     * 通知地址
     *
     * @param request 请求体
     * @return 支付成功的结果
     * @author xuyuxiang
     * @date 2020/8/14 10:29
     **/
    String certNotify(HttpServletRequest request);

    /**
     * 返回地址
     *
     * @param request  请求体
     * @param response 响应体
     * @author xuyuxiang
     * @date 2020/8/14 10:29
     **/
    void certReturn(HttpServletRequest request, HttpServletResponse response);

    /**
     * 通用方法
     *
     * @param resultStr     返回结果
     * @param jsonObjectKey 返回结果的json的Key
     * @return 结果的map
     * @author xuyuxiang
     * @date 2020/8/20 10:50
     **/
    Dict doHandleWithDict(String resultStr, String jsonObjectKey);

    /**
     * 通用方法
     *
     * @param resultStr     返回结果
     * @param jsonObjectKey 返回结果的json的Key
     * @return jsonObject结果
     * @author xuyuxiang
     * @date 2020/8/20 10:50
     **/
    JSONObject doHandleWithJsonObject(String resultStr, String jsonObjectKey);
}
