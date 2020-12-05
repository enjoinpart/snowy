package com.cn.xiaonuo.pay.core.interceptor;

import com.alipay.api.AlipayApiException;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.pay.core.controller.AbstractAliPayApiController;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayExceptionEnum;
import com.ijpay.alipay.AliPayApiConfig;
import com.ijpay.alipay.AliPayApiConfigKit;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 支付宝支付拦截器
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:44
 **/
public class AliPayInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler) throws AlipayApiException {
        if (HandlerMethod.class.equals(handler.getClass())) {
            HandlerMethod method = (HandlerMethod) handler;
            Object controller = method.getBean();
            if (!(controller instanceof AbstractAliPayApiController)) {
                throw new ServiceException(AliPayExceptionEnum.CONTROLLER_ERROR);
            }
            AliPayApiConfig apiConfig = ((AbstractAliPayApiController) controller).getApiConfig();
            AliPayApiConfigKit.setThreadLocalAliPayApiConfig(apiConfig);
            return true;
        }
        return false;
    }
}
