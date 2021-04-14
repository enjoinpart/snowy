package vip.xiaonuo.pay.core.interceptor;

import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.pay.core.controller.AbstractWxPayApiController;
import vip.xiaonuo.pay.modular.wxpay.enums.WxPayExceptionEnum;
import com.ijpay.wxpay.WxPayApiConfig;
import com.ijpay.wxpay.WxPayApiConfigKit;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import vip.xiaonuo.pay.modular.wxpay.enums.WxPayExceptionEnum;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 微信支付拦截器
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:44
 **/
public class WxPayInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler) {
        if (HandlerMethod.class.equals(handler.getClass())) {
            HandlerMethod method = (HandlerMethod) handler;
            Object controller = method.getBean();
            if (!(controller instanceof AbstractWxPayApiController)) {
                throw new ServiceException(WxPayExceptionEnum.CONTROLLER_ERROR);
            }
            WxPayApiConfig apiConfig = ((AbstractWxPayApiController) controller).getApiConfig();
            WxPayApiConfigKit.setThreadLocalWxPayApiConfig(apiConfig);
            return true;
        }
        return false;
    }
}
