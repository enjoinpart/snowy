package vip.xiaonuo.dbs.core.exception;

import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;

/**
 * 数据源容器初始化失败异常
 *
 * @author xuyuxiang
 * @date 2020/8/24
 */
public class DataSourceException extends ServiceException {

    public DataSourceException(AbstractBaseExceptionEnum exception) {
        super(exception);
    }

}
