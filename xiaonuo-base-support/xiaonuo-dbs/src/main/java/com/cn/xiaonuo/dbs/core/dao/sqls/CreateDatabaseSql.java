package com.cn.xiaonuo.dbs.core.dao.sqls;

import lombok.Getter;

/**
 * 创建数据库的sql
 *
 * @author xuyuxiang
 * @date 2019-07-16-13:06
 */
@Getter
public class CreateDatabaseSql extends AbstractSql {

    @Override
    protected String mysql() {
        return "CREATE DATABASE IF NOT EXISTS ? DEFAULT CHARSET utf8 COLLATE utf8_general_ci;";
    }

    @Override
    protected String sqlServer() {
        return "";
    }

    @Override
    protected String pgSql() {
        return "";
    }

    @Override
    protected String oracle() {
        return "";
    }
}
