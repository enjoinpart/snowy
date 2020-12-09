package com.cn.xiaonuo.tenant.core.util;

import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.core.pojo.druid.DruidProperties;
import com.cn.xiaonuo.dbs.core.dao.sqls.CreateDatabaseSql;
import com.cn.xiaonuo.dbs.core.dao.sqls.DropDatabaseSql;
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
