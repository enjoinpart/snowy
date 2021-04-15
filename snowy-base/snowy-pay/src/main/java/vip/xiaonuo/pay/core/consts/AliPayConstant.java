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
package vip.xiaonuo.pay.core.consts;

/**
 * 支付宝支付相关常量
 *
 * @author xuyuxiang
 * @date 2020/8/12 14:50
 **/
public interface AliPayConstant {


    /**
     * 成功参数值
     */
    String SUCCESS_MESSAGE_VALUE = "Success";

    /**
     * 成功参数键
     */
    String SUCCESS_MESSAGE_KEY = "msg";

    /**
     * 失败参数键
     */
    String ERROR_MESSAGE_KEY = "sub_msg";

    /**
     * 商家订单号键
     */
    String OUT_TRADE_NO = "out_trade_no";

    /**
     * 交易状态键
     */
    String TRADE_STATUS = "trade_status";

    /**
     * 交易状态成功值
     */
    String TRADE_STATUS_SUCCESS_VALUE = "TRADE_SUCCESS";

    /**
     * 订单金额键
     */
    String TOTAL_AMOUNT = "total_amount";

    /**
     * 商户号键
     */
    String APP_ID = "app_id";

    /**
     * 支付宝订单号键
     */
    String TRADE_NO = "trade_no";

    /**
     * 扫码支付的二维码地址参数的key
     */
    String PRECREATE_PAY_QR_CODE = "qr_code";

    /**
     * 扫码支付的二维码失效时间（5分钟）
     */
    String PRECREATE_PAY_QR_EXPRESS_TIME = "5m";

    /**
     * wap支付productCode
     */
    String WAP_PAY_PRODUCT_CODE = "QUICK_WAP_PAY";

    /**
     * wap支付成功回调参数的key
     */
    String WAP_PAY_PASS_BACK_PARAMS = "1";

    /**
     * 转账支付类型，登录账号
     */
    String TRANSFER_PAYEETYPE = "ALIPAY_LOGONID";

    /**
     * pc支付productCode
     */
    String PC_PAY_PRODUCT_CODE = "FAST_INSTANT_TRADE_PAY";

    /**
     * pc支付成功回调参数的key
     */
    String PC_PAY_PASS_BACK_PARAMS = "passback_params";

    /**
     * 扫码支付的成功参数的key
     */
    String PRECREATE_PAY_RESPONSE = "alipay_trade_precreate_response";

    /**
     * 转帐成功参数的key
     */
    String TRANSFER_RESPONSE = "alipay_fund_trans_toaccount_transfer_response";

    /**
     * 退款成功参数的key
     */
    String TRADE_REFUND_RESPONSE = "alipay_trade_refund_response";

    /**
     * 订单创建成功参数的key
     */
    String TRADE_CREATED_RESPONSE = "alipay_trade_create_response";

    /**
     * 订单撤销成功参数的key
     */
    String TRADE_CANCEL_RESPONSE = "alipay_trade_cancel_response";

    /**
     * 订单关闭成功参数的key
     */
    String TRADE_CLOSE_RESPONSE = "alipay_trade_close_response";

    /**
     * 订单结算成功参数的key
     */
    String TRADE_ORDER_SETTLE_RESPONSE = "alipay_trade_order_settle_response";

    /**
     * 查询账户类型
     */
    String QUERY_ACCOUNT_TYPE = "ACCTRANS_ACCOUNT";

    /**
     * 用户信息查询的成功参数的key
     */
    String QUERY_USER_INFO_SHARE_RESPONSE = "alipay_user_info_share_response";

    /**
     * 账户余额查询的成功参数的key
     */
    String QUERY_ACCOUNT_RESPONSE = "alipay_fund_account_query_response";

    /**
     * 交易查询的成功的参数的key
     */
    String QUERY_TRADE_RESPONSE = "alipay_trade_query_response";

    /**
     * 退款查询的成功的参数的key
     */
    String QUERY_REFUND_TRADE_RESPONSE = "alipay_trade_fastpay_refund_query_response";

    /**
     * 对账单查询的类型参数的key
     */
    String QUERY_BILL_TYPE = "trade";

    /**
     * 对账单查询的成功参数的key
     */
    String QUERY_BILL_RESPONSE = "alipay_data_dataservice_bill_downloadurl_query_response";
}
