package vip.xiaonuo.tenant.modular.factory;

import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.modular.param.DatabaseInfoParam;

/**
 * 数据库信息工厂
 *
 * @author xuyuxiang
 * @date 2019-06-15-20:05
 */
public class DataBaseInfoFactory {

    /**
     * 数据库信息工厂
     *
     * @author xuyuxiang
     * @date 2019-06-15 20:05
     */
    public static DatabaseInfoParam createDataBaseInfo(DruidProperties druidProperties, String databaseName) {

        DatabaseInfoParam databaseInfo = new DatabaseInfoParam();

        databaseInfo.setDbName(databaseName);
        databaseInfo.setJdbcDriver(druidProperties.getDriverClassName());
        databaseInfo.setUserName(druidProperties.getUsername());
        databaseInfo.setPassword(druidProperties.getPassword());

        //根据旧的url，拼接新的url
        String jdbcUrl = druidProperties.getUrl();
        int first = jdbcUrl.lastIndexOf("/") + 1;
        int last = jdbcUrl.indexOf("?");

        //替换旧的名称
        String newUrl = jdbcUrl.substring(0, first) + databaseName + jdbcUrl.substring(last);
        databaseInfo.setJdbcUrl(newUrl);

        return databaseInfo;
    }

}
