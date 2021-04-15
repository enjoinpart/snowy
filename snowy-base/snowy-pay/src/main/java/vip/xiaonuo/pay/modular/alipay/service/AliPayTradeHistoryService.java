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

import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import vip.xiaonuo.pay.modular.alipay.param.AliPayTradeHistoryParam;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.math.BigDecimal;

/**
 * 支付宝交易记录service接口
 *
 * @author xuyuxiang
 * @date 2020/8/26 10:08
 **/
public interface AliPayTradeHistoryService extends IService<AliPayTradeHistory> {

    /**
     * 新增交易记录
     *
     * @param aliPayTradeHistory 交易记录参数
     * @author xuyuxiang
     * @date 2020/8/26 10:36
     **/
    void add(AliPayTradeHistory aliPayTradeHistory);

    /**
     * 修改交易状态
     *
     * @param outTradeNo 商家订单号
     * @param tradeNo    支付宝订单号
     * @param status     状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款 5已取消）
     * @author xuyuxiang
     * @date 2020/8/26 10:36
     **/
    void changeStatus(String outTradeNo, String tradeNo, Integer status);

    /**
     * 支付宝交易记录查询（只查询通过本平台的交易）
     *
     * @param aliPayTradeHistoryParam 查询参数
     * @return 分页结果
     * @author xuyuxiang
     * @date 2020/8/26 9:56
     **/
    PageResult<AliPayTradeHistory> page(AliPayTradeHistoryParam aliPayTradeHistoryParam);

    /**
     * 校验商家订单号是否存在
     *
     * @param outTradeNo 商家订单号
     * @author xuyuxiang
     * @date 2020/9/2 20:46
     **/
    void validateOutTradeNo(String outTradeNo);

    /**
     * 校验商家订单号与金额是否对应
     *
     * @param outTradeNo 商家订单号
     * @param amount     订单金额
     * @author xuyuxiang
     * @date 2020/9/2 20:53
     **/
    void validateAmount(String outTradeNo, BigDecimal amount);
}
