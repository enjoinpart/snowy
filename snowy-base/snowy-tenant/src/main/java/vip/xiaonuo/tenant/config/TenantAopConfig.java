package vip.xiaonuo.tenant.config;

import vip.xiaonuo.tenant.core.aop.TenantSourceExAop;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 多租户的配置
 *
 * @author xuyuxiang
 * @date 2020/9/3 22:02
 */
@Configuration
public class TenantAopConfig {

    /**
     * 多租户切换aop的配置
     *
     * @author xuyuxiang
     * @date 2020/9/3 22:03
     */
    @Bean
    public TenantSourceExAop tenantSourceExAop() {
        return new TenantSourceExAop();
    }

}
