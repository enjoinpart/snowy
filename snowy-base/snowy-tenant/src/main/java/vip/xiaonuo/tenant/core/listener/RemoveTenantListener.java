package vip.xiaonuo.tenant.core.listener;

import vip.xiaonuo.core.tenant.context.TenantCodeHolder;
import vip.xiaonuo.core.tenant.context.TenantDbNameHolder;
import org.springframework.context.ApplicationListener;
import org.springframework.web.context.support.ServletRequestHandledEvent;

/**
 * 临时清空租户的ThreadLocal缓存
 *
 * @author xuyuxiang
 * @date 2020/9/3 21:18
 */
public class RemoveTenantListener implements ApplicationListener<ServletRequestHandledEvent> {

    @Override
    public void onApplicationEvent(ServletRequestHandledEvent event) {
        TenantCodeHolder.remove();
        TenantDbNameHolder.remove();
    }

}
