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
package vip.xiaonuo.dbs.core.context;

import com.alibaba.druid.pool.DruidDataSource;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.core.consts.DatabaseConstant;
import vip.xiaonuo.dbs.core.dao.DataBaseInfoDao;
import vip.xiaonuo.dbs.core.factory.DruidFactory;

import javax.sql.DataSource;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 数据源的上下文容器(单例)
 *
 * @author xuyuxiang
 * @date 2019-06-12-13:37
 */
public class DataSourceContext {

    /**
     * 数据源容器
     */
    private static final Map<String, DataSource> DATA_SOURCES = new ConcurrentHashMap<>();

    /**
     * 数据源的配置容器
     */
    private static Map<String, DruidProperties> DATA_SOURCES_CONF = new ConcurrentHashMap<>();

    /**
     * 初始化所有dataSource
     *
     * @author xuyuxiang
     * @date 2019-06-12 13:48
     */
    public static void initDataSource(DruidProperties masterDataSourceProperties, DataSource dataSourcePrimary) {

        // 清空数据库中的主数据源信息
        new DataBaseInfoDao(masterDataSourceProperties).deleteMasterDatabaseInfo();

        // 初始化主数据源信息
        new DataBaseInfoDao(masterDataSourceProperties).createMasterDatabaseInfo();

        // 从数据库中获取所有的数据源信息
        DataBaseInfoDao dataBaseInfoDao = new DataBaseInfoDao(masterDataSourceProperties);
        Map<String, DruidProperties> allDataBaseInfo = dataBaseInfoDao.getAllDataBaseInfo();

        // 赋给全局变量
        DATA_SOURCES_CONF = allDataBaseInfo;

        // 根据数据源信息初始化所有的DataSource
        for (Map.Entry<String, DruidProperties> entry : allDataBaseInfo.entrySet()) {

            String dbName = entry.getKey();
            DruidProperties druidProperties = entry.getValue();

            // 如果是主数据源，不用初始化第二遍，如果是其他数据源就通过property初始化
            if (dbName.equalsIgnoreCase(DatabaseConstant.MASTER_DATASOURCE_NAME)) {
                DATA_SOURCES_CONF.put(dbName, druidProperties);
                DATA_SOURCES.put(dbName, dataSourcePrimary);
            } else {
                DataSource dataSource = createDataSource(dbName, druidProperties);
                DATA_SOURCES.put(dbName, dataSource);
            }
        }
    }

    /**
     * 新增datasource
     *
     * @author xuyuxiang
     * @date 2019-06-12 14:51
     */
    public static void addDataSource(String dbName, DataSource dataSource, DruidProperties druidProperties) {
        DATA_SOURCES.put(dbName, dataSource);
        DATA_SOURCES_CONF.put(dbName, druidProperties);
    }

    /**
     * 获取数据源
     *
     * @author xuyuxiang
     * @date 2019-06-12 13:50
     */
    public static Map<String, DataSource> getDataSources() {
        return DATA_SOURCES;
    }

    /**
     * 获取数据源的配置
     *
     * @author xuyuxiang
     * @date 2019-06-18 19:26
     */
    public static Map<String, DruidProperties> getDataSourcesConfs() {
        return DATA_SOURCES_CONF;
    }

    /**
     * 数据源创建模板
     *
     * @author xuyuxiang
     * @date 2020/8/24
     */
    public static DataSource createDataSource(String dataSourceName, DruidProperties druidProperties) {

        //添加到全局配置里
        DATA_SOURCES_CONF.put(dataSourceName, druidProperties);

        return DruidFactory.createDruidDataSource(druidProperties);
    }

    /**
     * 删除数据源
     *
     * @author xuyuxiang
     * @date 2020/8/27
     */
    public static void removeDataSource(String dataSourceName) {

        // 先关闭掉数据源
        DataSource dataSource = DATA_SOURCES.get(dataSourceName);
        if (dataSource instanceof DruidDataSource) {
            ((DruidDataSource) dataSource).close();
        }

        // 从容器中删除数据源
        DATA_SOURCES.remove(dataSourceName);

        // 多数据源配置中也删除
        DATA_SOURCES_CONF.remove(dataSourceName);
    }

}
