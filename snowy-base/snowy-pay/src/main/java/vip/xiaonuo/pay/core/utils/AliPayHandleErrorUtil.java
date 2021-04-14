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
