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
package vip.xiaonuo.dbs.core.dao.sqls;

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
