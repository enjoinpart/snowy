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
package vip.xiaonuo.tenant.core.util;

import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.pojo.druid.DruidProperties;
import vip.xiaonuo.dbs.core.dao.sqls.CreateDatabaseSql;
import vip.xiaonuo.dbs.core.dao.sqls.DropDatabaseSql;
import lombok.extern.slf4j.Slf4j;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * 数据库操作工具类
 *
 * @author xuyuxiang
 * @date 2019/1/13 18:34
 */
@Slf4j
public class DatabaseUtil {

    /**
     * 创建数据库
     *
     * @author xuyuxiang
     * @date 2019-06-18 15:29
     */
    public static void createDatabase(DruidProperties druidProperties, String databaseName) {
        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            //创建sql
            String sql = new CreateDatabaseSql().getSql(druidProperties.getUrl());
            sql = sql.replaceAll("\\?", databaseName);

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            int i = preparedStatement.executeUpdate();
            log.info(">>> 创建数据库！数量：" + i);

        } catch (Exception ex) {
            log.error(">>> 执行sql出现问题！", ex);
            throw new ServiceException(500, "创建多租户-执行sql出现问题！");
        }
    }

    /**
     * 删除数据库
     *
     * @author xuyuxiang
     * @date 2020/9/4
     */
    public static void dropDatabase(DruidProperties druidProperties, String databaseName) {
        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            //创建sql
            String sql = new DropDatabaseSql().getSql(druidProperties.getUrl());
            sql = sql.replaceAll("\\?", databaseName);

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            int i = preparedStatement.executeUpdate();
            log.info(">>> 创建数据库！数量：" + i);

        } catch (Exception ex) {
            log.error(">>> 执行sql出现问题！", ex);
            throw new ServiceException(500, "创建多租户-执行sql出现问题！");
        }
    }

}
