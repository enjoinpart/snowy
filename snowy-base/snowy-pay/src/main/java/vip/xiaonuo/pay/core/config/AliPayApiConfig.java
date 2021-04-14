package vip.xiaonuo.pay.core.config;

import vip.xiaonuo.pay.core.factory.YamlConfigFactory;
import vip.xiaonuo.pay.core.pojo.AliPayBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import vip.xiaonuo.pay.core.factory.YamlConfigFactory;

/**
 * 支付宝支付配置
 *
 * @author xuyuxiang
 * @date 2020/8/11 11:29
 **/
@Configuration
@PropertySource(value = "classpath:/alipay.yml", factory = YamlConfigFactory.class)
public class AliPayApiConfig {

    @Bean
    @ConfigurationProperties(prefix = "alipay")
    public AliPayBean alipayBean() {
        return new AliPayBean();
    }
}
