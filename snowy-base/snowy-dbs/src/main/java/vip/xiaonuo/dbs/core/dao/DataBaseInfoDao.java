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
package vip.xiaonuo.dbs.core.dao;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.core.consts.DatabaseConstant;
import vip.xiaonuo.dbs.core.dao.sqls.AddDatabaseInfoSql;
import vip.xiaonuo.dbs.core.dao.sqls.DatabaseListSql;
import vip.xiaonuo.dbs.core.dao.sqls.DeleteDatabaseInfoSql;
import vip.xiaonuo.dbs.core.exception.DataSourceException;
import vip.xiaonuo.dbs.core.exception.enums.DataSourceExceptionEnum;
import lombok.extern.slf4j.Slf4j;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.core.consts.DatabaseConstant;
import vip.xiaonuo.dbs.core.dao.sqls.AddDatabaseInfoSql;
import vip.xiaonuo.dbs.core.dao.sqls.DatabaseListSql;
import vip.xiaonuo.dbs.core.dao.sqls.DeleteDatabaseInfoSql;
import vip.xiaonuo.dbs.core.exception.DataSourceException;
import vip.xiaonuo.dbs.core.exception.enums.DataSourceExceptionEnum;

import java.sql.*;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 操作数据源信息的dao
 *
 * @author xuyuxiang
 * @date 2019-06-12-14:02
 */
@Slf4j
public class DataBaseInfoDao {

    private DruidProperties druidProperties;

    public DataBaseInfoDao(DruidProperties druidProperties) {
        this.druidProperties = druidProperties;
    }

    /**
     * 查询所有数据源列表
     *
     * @author xuyuxiang
     * @date 2019-05-04 20:30
     */
    public Map<String, DruidProperties> getAllDataBaseInfo() {

        Map<String, DruidProperties> dataSourceList = new HashMap<>(16);
        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(
                    druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            PreparedStatement preparedStatement = conn.prepareStatement(new DatabaseListSql().getSql(druidProperties.getUrl()));
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                DruidProperties druidProperties = createDruidProperties(resultSet);
                String dbName = resultSet.getString("db_name");
                dataSourceList.put(dbName, druidProperties);
            }

            return dataSourceList;

        } catch (Exception ex) {
            throw new DataSourceException(DataSourceExceptionEnum.QUERY_DATASOURCE_INFO_ERROR);
        }
    }

    /**
     * 初始化master的数据源，要和properties配置的数据源一致
     *
     * @author xuyuxiang
     * @date 2019-06-15 10:20
     */
    public void createMasterDatabaseInfo() {
        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(
                    druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            PreparedStatement preparedStatement = conn.prepareStatement(new AddDatabaseInfoSql().getSql(druidProperties.getUrl()));

            preparedStatement.setLong(1, IdWorker.getId());
            preparedStatement.setString(2, DatabaseConstant.MASTER_DATASOURCE_NAME);
            preparedStatement.setString(3, druidProperties.getDriverClassName());
            preparedStatement.setString(4, druidProperties.getUsername());
            preparedStatement.setString(5, druidProperties.getPassword());
            preparedStatement.setString(6, druidProperties.getUrl());
            preparedStatement.setString(7, "主数据源，项目启动数据源！");
            preparedStatement.setString(8, DateUtil.formatDateTime(new Date()));

            int i = preparedStatement.executeUpdate();
            log.info(">>> 初始化master的databaseInfo信息！初始化" + i + "条！");
        } catch (Exception ex) {
            log.error(">>> 初始化master的databaseInfo信息错误！", ex);
            throw new DataSourceException(DataSourceExceptionEnum.QUERY_DATASOURCE_INFO_ERROR);
        }
    }

    /**
     * 删除master的数据源信息
     *
     * @author xuyuxiang
     * @date 2019-06-15 10:20
     */
    public void deleteMasterDatabaseInfo() {
        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(
                    druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            PreparedStatement preparedStatement = conn.prepareStatement(new DeleteDatabaseInfoSql().getSql(druidProperties.getUrl()));
            preparedStatement.setString(1, DatabaseConstant.MASTER_DATASOURCE_NAME);
            int i = preparedStatement.executeUpdate();
            log.info(">>> 删除master的databaseInfo信息！删除" + i + "条！");
        } catch (Exception ex) {
            log.info(">>> 删除master的databaseInfo信息失败！", ex);
            throw new DataSourceException(DataSourceExceptionEnum.QUERY_DATASOURCE_INFO_ERROR);
        }
    }

    /**
     * 通过查询结果组装druidProperties
     *
     * @author xuyuxiang
     * @date 2019-06-12 14:22
     */
    private DruidProperties createDruidProperties(ResultSet resultSet) {

        DruidProperties druidProperties = new DruidProperties();

        druidProperties.setTestOnBorrow(true);
        druidProperties.setTestOnReturn(true);

        try {
            druidProperties.setDriverClassName(resultSet.getString("jdbc_driver"));
            druidProperties.setUrl(resultSet.getString("jdbc_url"));
            druidProperties.setUsername(resultSet.getString("user_name"));
            druidProperties.setPassword(resultSet.getString("password"));
        } catch (SQLException e) {
            throw new DataSourceException(DataSourceExceptionEnum.QUERY_DATASOURCE_INFO_ERROR);
        }

        return druidProperties;
    }

}
