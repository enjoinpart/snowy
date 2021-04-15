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
