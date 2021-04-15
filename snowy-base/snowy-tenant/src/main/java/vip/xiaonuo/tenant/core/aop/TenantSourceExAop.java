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
