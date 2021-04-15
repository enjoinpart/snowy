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
package vip.xiaonuo.pay.modular.alipay.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.validation.dateormonth.DateOrMonthValue;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

/**
 * 支付宝支付参数
 *
 * @author xuyuxiang
 * @date 2020/8/11 15:59
 **/
@EqualsAndHashCode(callSuper = true)
@Data
public class AliPayParam extends BaseParam {

    /**
     * 支付金额
     */
    @NotNull(message = "支付金额不能为空，请检查amount参数", groups = {add.class, edit.class, back.class, active.class})
    @DecimalMin(message = "支付金额格式错误，请检查amount参数", groups = {add.class, edit.class, back.class, active.class}, value = "0.01")
    private BigDecimal amount;

    /**
     * 商家订单号
     */
    @NotBlank(message = "商家订单号不能为空，请检查outTradeNo参数", groups = {trace.class, add.class, back.class})
    private String outTradeNo;

    /**
     * 支付宝订单号
     */
    @NotBlank(message = "支付宝订单号不能为空，请检查tradeNo参数", groups = {back.class, stop.class})
    private String tradeNo;

    /**
     * 交易日期
     */
    @DateOrMonthValue(message = "交易日期格式不正确，请检查billDate参数", groups = {export.class})
    private String billDate;

    /**
     * 原因
     */
    @NotBlank(message = "原因不能为空，请检查reason参数", groups = {back.class})
    private String reason;

    /**
     * 买家支付宝账号
     */
    @NotBlank(message = "买家支付宝账号不能为空，请检查buyerLogonId参数", groups = {active.class})
    private String buyerLogonId;
}
