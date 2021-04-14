package vip.xiaonuo.dbs.modular.service;

import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.dbs.modular.entity.DatabaseInfo;
import vip.xiaonuo.dbs.modular.param.DatabaseInfoParam;
import vip.xiaonuo.core.pojo.page.PageResult;

/**
 * <p>
 * 数据库信息表 服务类
 * </p>
 *
 * @author yubaoshan
 * @since 2019-06-15
 */
public interface DatabaseInfoService extends IService<DatabaseInfo> {

    /**
     * 查询数据库信息
     *
     * @param databaseInfoParam 查询参数
     * @return 查询分页结果
     * @author xuyuxiang
     * @date 2020/3/24 20:55
     */
    PageResult<DatabaseInfo> page(DatabaseInfoParam databaseInfoParam);

    /**
     * 新增数据库信息
     *
     * @param databaseInfoParam 新增参数
     * @author yubaoshan
     * @date 2019-06-15
     */
    void add(DatabaseInfoParam databaseInfoParam);

    /**
     * 删除，删除会导致某些用该数据源的service操作失败
     *
     * @param databaseInfoParam 删除参数
     * @author yubaoshan
     * @date 2019-06-15
     */
    void delete(DatabaseInfoParam databaseInfoParam);

    /**
     * 编辑数据库信息
     *
     * @param databaseInfoParam 编辑参数
     * @author yubaoshan
     * @date 2019-06-15
     */
    void edit(DatabaseInfoParam databaseInfoParam);
}
