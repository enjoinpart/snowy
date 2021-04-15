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
package vip.xiaonuo.pay.modular.alipay.service.impl;

import cn.hutool.core.lang.Dict;
import cn.hutool.log.Log;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.pay.core.consts.AliPayConstant;
import vip.xiaonuo.pay.core.pojo.AliPayBean;
import vip.xiaonuo.pay.core.utils.AliPayModelGenUtil;
import vip.xiaonuo.pay.modular.alipay.enums.AliPayExceptionEnum;
import vip.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryStatusEnum;
import vip.xiaonuo.pay.modular.alipay.param.AliPayParam;
import vip.xiaonuo.pay.modular.alipay.service.AliPayMgrService;
import vip.xiaonuo.pay.modular.alipay.service.AliPayService;
import vip.xiaonuo.pay.modular.alipay.service.AliPayTradeHistoryService;
import com.ijpay.alipay.AliPayApi;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 支付宝支付查询Service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/13 11:05
 **/
@Service
public class AliPayMgrServiceImpl implements AliPayMgrService {

    private static final Log log = Log.get();

    @Resource
    private AliPayBean aliPayBean;

    @Resource
    private AliPayService aliPayService;

    @Resource
    private AliPayTradeHistoryService aliPayTradeHistoryService;

    @Override
    public Dict userInfoQuery() {
        try {
            String resultStr = AliPayApi.certificateExecute(AliPayModelGenUtil.getAliPayUserInfoShareRequest(), null).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_USER_INFO_SHARE_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝查询异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.QUERY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict accountQuery() {
        try {
            String resultStr = AliPayApi.accountQueryToResponse(AliPayModelGenUtil.getAliPayFundAccountQueryModel(aliPayBean), null).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_ACCOUNT_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝查询异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.QUERY_ERROR.getCode(), e.getMessage());
        }
    }


    @Override
    public Dict tradeQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.tradeQueryToResponse(AliPayModelGenUtil.getAliPayTradeQueryModel(aliPayParam)).getBody();
            Dict dict = aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_TRADE_RESPONSE);
            //获取商家订单号
            String outTradeNo = aliPayParam.getOutTradeNo();
            //获取订单状态
            String tradeStatus = (String) dict.get(AliPayConstant.TRADE_STATUS);
            //如果支付成功，则将其更新
            if(AliPayConstant.TRADE_STATUS_SUCCESS_VALUE.equals(tradeStatus)) {
                aliPayTradeHistoryService.changeStatus(outTradeNo, null, AliPayTradeHistoryStatusEnum.PAYED.getCode());
            }
            return dict;
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict tradeRefundQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.tradeRefundQueryToResponse(AliPayModelGenUtil.getAliPayTradeRefundQueryModel(aliPayParam)).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_REFUND_TRADE_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }

    @Override
    public Dict billDownloadUrlQuery(AliPayParam aliPayParam) {
        try {
            String resultStr = AliPayApi.billDownloadUrlQueryToResponse(AliPayModelGenUtil
                    .getAliPayDataDataServiceBillDownloadUrlQueryModel(aliPayParam)).getBody();
            return aliPayService.doHandleWithDict(resultStr, AliPayConstant.QUERY_BILL_RESPONSE);
        } catch (Exception e) {
            log.error(">>> 支付宝支付异常：{}", e.getMessage());
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), e.getMessage());
        }
    }
}
