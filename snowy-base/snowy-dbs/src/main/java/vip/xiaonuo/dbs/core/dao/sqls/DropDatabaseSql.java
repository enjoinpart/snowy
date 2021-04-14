package vip.xiaonuo.dbs.core.dao.sqls;

import lombok.Getter;

/**
 * 删除数据库的sql
 *
 * @author xuyuxiang
 * @date 2020/9/4
 */
@Getter
public class DropDatabaseSql extends AbstractSql {

    @Override
    protected String mysql() {
        return "DROP DATABASE ?;";
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
