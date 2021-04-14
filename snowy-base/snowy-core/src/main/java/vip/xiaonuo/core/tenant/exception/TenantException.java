package vip.xiaonuo.core.tenant.exception;

import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;

/**
 * 多租户的异常
 *
 * @author xuyuxiang
 * @date 2020/9/3
 */
public class TenantException extends ServiceException {

    public TenantException(AbstractBaseExceptionEnum exception) {
        super(exception);
    }

}
