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

import cn.hutool.json.JSONObject;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.pay.core.consts.AliPayConstant;
import vip.xiaonuo.pay.modular.alipay.enums.AliPayExceptionEnum;

/**
 * 处理支付宝响应错误的工具类
 *
 * @author xuyuxiang
 * @date 2020/8/13 11:28
 **/
public class AliPayHandleErrorUtil {

    /**
     * 处理响应结果，如果错误则抛异常
     *
     * @author xuyuxiang
     * @date 2020/8/13 10:03
     **/
    public static void handelErrorResponse(JSONObject responseObj) {
        //获取响应消息
        String msg = responseObj.getStr(AliPayConstant.SUCCESS_MESSAGE_KEY);
        //如果不成功
        if (!AliPayConstant.SUCCESS_MESSAGE_VALUE.equals(msg)) {
            //获取错误消息，并抛异常
            String subMsg = responseObj.getStr(AliPayConstant.ERROR_MESSAGE_KEY);
            throw new ServiceException(AliPayExceptionEnum.PAY_ERROR.getCode(), subMsg);
        }
    }
}
