package vip.xiaonuo.pay.config;

import vip.xiaonuo.pay.core.interceptor.AliPayInterceptor;
import vip.xiaonuo.pay.core.interceptor.WxPayInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 支付相关配置
 *
 * @author xuyuxiang
 * @date 2020/8/11 17:02
 **/
@Configuration
@Import({cn.hutool.extra.spring.SpringUtil.class})
public class PayConfig implements WebMvcConfigurer {

    /**
     * 添加拦截器
     *
     * @author xuyuxiang
     * @date 2020/8/11 17:03
     **/
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AliPayInterceptor()).addPathPatterns("/aliPay/**");
        registry.addInterceptor(new AliPayInterceptor()).addPathPatterns("/aliPayMgr/**");
        registry.addInterceptor(new WxPayInterceptor()).addPathPatterns("/wxPay/**");
        registry.addInterceptor(new WxPayInterceptor()).addPathPatterns("/wxPayMgr/**");
    }
}
