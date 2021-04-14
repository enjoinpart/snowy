package vip.xiaonuo.tenant.core.aop;

import cn.hutool.core.lang.Dict;
import cn.hutool.core.util.StrUtil;
import vip.xiaonuo.core.consts.AopSortConstant;
import vip.xiaonuo.core.context.constant.ConstantContextHolder;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.dbs.CurrentDataSourceContext;
import vip.xiaonuo.core.tenant.consts.TenantConstants;
import vip.xiaonuo.core.tenant.context.TenantCodeHolder;
import vip.xiaonuo.core.tenant.context.TenantDbNameHolder;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;

/**
 * 租户的多数据源切换的aop
 *
 * @author xuyuxiang
 * @date 2017年3月5日 上午10:22:16
 */
@Aspect
public class TenantSourceExAop implements Ordered {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    /**
     * 拦截控制器层
     */
    @Pointcut("execution(* *..controller.*.*(..))")
    public void cutService() {
    }

    @Around("cutService()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        try {
            // 根据系统总开关来进行aop
            if (ConstantContextHolder.getTenantOpenFlag()) {

                // 当前用户已经登陆并且租户信息不为空
                if (LoginContextHolder.me().hasLogin()) {
                    Dict tenantInfo = LoginContextHolder.me().getSysLoginUser().getTenants();
                    if (tenantInfo != null) {

                        // 获取当前用户登录的租户标识，切换数据源
                        String tenantDbName = tenantInfo.getStr(TenantConstants.TENANT_DB_NAME);
                        if (StrUtil.isNotBlank(tenantDbName)) {
                            CurrentDataSourceContext.setDataSourceType(tenantDbName);
                            log.debug(">>> 多租户AOP--TenantSourceExAop--设置数据源为：" + tenantDbName);
                        }
                    }
                }
            }
            return point.proceed();
        } finally {
            log.debug(">>> 多租户AOP--TenantSourceExAop--清空数据源信息！");
            CurrentDataSourceContext.clearDataSourceType();
            TenantCodeHolder.remove();
            TenantDbNameHolder.remove();
        }
    }

    /**
     * aop的顺序要早于多数据源切换的
     */
    @Override
    public int getOrder() {
        return AopSortConstant.TENANT_EXCHANGE_AOP;
    }

}
