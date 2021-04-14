package vip.xiaonuo.dbs.core.factory;

import com.alibaba.druid.pool.DruidDataSource;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.modular.entity.DatabaseInfo;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.modular.entity.DatabaseInfo;

/**
 * Druid数据源创建
 *
 * @author xuyuxiang
 * @date 2019-06-15-20:05
 */
public class DruidFactory {

    /**
     * 创建druid配置
     *
     * @author xuyuxiang
     * @date 2019-06-15 20:05
     */
    public static DruidProperties createDruidProperties(DatabaseInfo databaseInfo) {
        DruidProperties druidProperties = new DruidProperties();
        druidProperties.setDriverClassName(databaseInfo.getJdbcDriver());
        druidProperties.setUsername(databaseInfo.getUserName());
        druidProperties.setPassword(databaseInfo.getPassword());
        druidProperties.setUrl(databaseInfo.getJdbcUrl());
        return druidProperties;
    }

    /**
     * 创建druid数据源
     *
     * @author xuyuxiang
     * @date 2019-06-15 20:05
     */
    public static DruidDataSource createDruidDataSource(DruidProperties druidProperties) {
        DruidDataSource dataSource = new DruidDataSource();
        druidProperties.config(dataSource);
        return dataSource;
    }

}
