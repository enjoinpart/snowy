package com.cn.xiaonuo.dbs.core.dao.sqls;

import lombok.Getter;

/**
 * 获取所有表的sql
 *
 * @author xuyuxiang
 * @date 2019-07-16-13:06
 */
@Getter
public class TableListSql extends AbstractSql {

    @Override
    protected String mysql() {
        return "select TABLE_NAME as tableName,TABLE_COMMENT as tableComment from information_schema.`TABLES` where TABLE_SCHEMA = ?";
    }

    @Override
    protected String sqlServer() {
        return "SELECT DISTINCT\n" +
                "d.name as tableName,\n" +
                "CONVERT(varchar(200), f.value) as tableComment\n" +
                "FROM\n" +
                "syscolumns a\n" +
                "LEFT JOIN systypes b ON a.xusertype= b.xusertype\n" +
                "INNER JOIN sysobjects d ON a.id= d.id\n" +
                "AND d.xtype= 'U'\n" +
                "AND d.name<> 'dtproperties'\n" +
                "LEFT JOIN syscomments e ON a.cdefault= e.id\n" +
                "LEFT JOIN sys.extended_properties g ON a.id= G.major_id\n" +
                "AND a.colid= g.minor_id\n" +
                "LEFT JOIN sys.extended_properties f ON d.id= f.major_id\n" +
                "AND f.minor_id= 0";
    }

    @Override
    protected String pgSql() {
        return "select " +
                "relname as \"tableName\"," +
                "cast(obj_description(relfilenode,'pg_class') as varchar) as \"tableComment\" " +
                "from pg_class c \n" +
                "where  relkind = 'r' and relname not like 'pg_%' and relname not like 'sql_%' order by relname";
    }

    @Override
    protected String oracle() {
        return "select ut.table_name as tableName, co.comments as tableComment from user_tables ut\n" +
                "left join user_tab_comments co on ut.table_name = co.table_name\n" +
                "where tablespace_name is not null and  user= ?";
    }
}
