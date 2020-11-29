package com.cn.xiaonuo.dbs.core.dao.sqls;

import lombok.Getter;

/**
 * 获取某个表的所有字段的sql
 *
 * @author xuyuxiang
 * @date 2019-07-16-13:06
 */
@Getter
public class TableFieldListSql extends AbstractSql {

    @Override
    protected String mysql() {
        return "select COLUMN_NAME as columnName,COLUMN_COMMENT as columnComment from information_schema.COLUMNS where table_name = ? and table_schema = ?";
    }

    @Override
    protected String sqlServer() {
        return "SELECT A.name as columnName,\n" +
                "       CONVERT(varchar(200), isnull(G.[value], '')) as columnComment\n" +
                "  FROM syscolumns A\n" +
                "  Left Join systypes B On A.xusertype= B.xusertype\n" +
                "  Inner Join sysobjects D On A.id= D.id\n" +
                "   and D.xtype= 'U'\n" +
                "   and D.name<> 'dtproperties'\n" +
                "  Left Join syscomments E on A.cdefault= E.id\n" +
                "  Left Join sys.extended_properties G on A.id= G.major_id\n" +
                "   and A.colid= G.minor_id\n" +
                "  Left Join sys.extended_properties F On D.id= F.major_id\n" +
                "   and F.minor_id= 0\n" +
                " where d.name= ? \n" +
                " Order By A.id,\n" +
                "         A.colorder";
    }

    @Override
    protected String pgSql() {
        return "SELECT a.attname as \"columnName\" , col_description(a.attrelid,a.attnum) as \"columnComment\"\n" +
                "FROM pg_class as c,pg_attribute as a " +
                "where c.relname = ? and a.attrelid = c.oid and a.attnum>0";
    }

    @Override
    protected String oracle() {
        return "select column_name as columnName, comments as columnComment from user_col_comments where Table_Name= ?";
    }
}
