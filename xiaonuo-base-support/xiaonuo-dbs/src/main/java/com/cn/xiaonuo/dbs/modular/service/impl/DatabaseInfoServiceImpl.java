package com.cn.xiaonuo.dbs.modular.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.druid.DruidProperties;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.core.tenant.consts.TenantConstants;
import com.cn.xiaonuo.dbs.core.consts.DatabaseConstant;
import com.cn.xiaonuo.dbs.core.context.DataSourceContext;
import com.cn.xiaonuo.dbs.core.exception.DataSourceException;
import com.cn.xiaonuo.dbs.core.exception.enums.DataSourceExceptionEnum;
import com.cn.xiaonuo.dbs.core.factory.DruidFactory;
import com.cn.xiaonuo.dbs.modular.entity.DatabaseInfo;
import com.cn.xiaonuo.dbs.modular.mapper.DatabaseInfoMapper;
import com.cn.xiaonuo.dbs.modular.param.DatabaseInfoParam;
import com.cn.xiaonuo.dbs.modular.service.DatabaseInfoService;
import com.alibaba.druid.pool.DruidDataSource;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cn.xiaonuo.dbs.core.consts.DatabaseConstant;
import com.cn.xiaonuo.dbs.core.context.DataSourceContext;
import com.cn.xiaonuo.dbs.core.exception.DataSourceException;
import com.cn.xiaonuo.dbs.core.exception.enums.DataSourceExceptionEnum;
import com.cn.xiaonuo.dbs.core.factory.DruidFactory;
import com.cn.xiaonuo.dbs.modular.entity.DatabaseInfo;
import com.cn.xiaonuo.dbs.modular.mapper.DatabaseInfoMapper;
import com.cn.xiaonuo.dbs.modular.param.DatabaseInfoParam;
import com.cn.xiaonuo.dbs.modular.service.DatabaseInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

/**
 * <p>
 * 数据库信息表 服务实现类
 * </p>
 *
 * @author yubaoshan
 * @since 2019-06-15
 */
@Service
public class DatabaseInfoServiceImpl extends ServiceImpl<DatabaseInfoMapper, DatabaseInfo> implements DatabaseInfoService {

    @Override
    public PageResult<DatabaseInfo> page(DatabaseInfoParam databaseInfoParam) {
        LambdaQueryWrapper<DatabaseInfo> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(databaseInfoParam)) {
            //根据名称模糊查询
            if (ObjectUtil.isNotEmpty(databaseInfoParam.getDbName())) {
                queryWrapper.like(DatabaseInfo::getDbName, databaseInfoParam.getDbName());
            }
        }
        Page<DatabaseInfo> result = this.page(PageFactory.defaultPage(), queryWrapper);

        // 更新密码
        List<DatabaseInfo> records = result.getRecords();
        for (DatabaseInfo record : records) {
            record.setPassword("***");
        }

        return new PageResult<>(result);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void add(DatabaseInfoParam databaseInfoParam) {

        // 判断数据库连接是否可用
        validateConnection(databaseInfoParam);

        // 数据库中插入记录
        DatabaseInfo entity = parseEntity(databaseInfoParam);
        this.save(entity);

        // 先判断context中是否有了这个数据源
        DataSource dataSource = DataSourceContext.getDataSources().get(databaseInfoParam.getDbName());
        if (dataSource != null) {
            throw new DataSourceException(DataSourceExceptionEnum.NAME_REPEAT_ERROR);
        }

        // 往上下文中添加数据源
        DruidProperties druidProperties = DruidFactory.createDruidProperties(entity);
        DruidDataSource druidDataSource = DruidFactory.createDruidDataSource(druidProperties);
        DataSourceContext.addDataSource(databaseInfoParam.getDbName(), druidDataSource, druidProperties);

        // 初始化数据源
        try {
            druidDataSource.init();
        } catch (SQLException exception) {
            throw new DataSourceException(DataSourceExceptionEnum.INIT_DATA_SOURCE_ERROR);
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(DatabaseInfoParam param) {

        DatabaseInfo databaseInfo = this.getById(param.getId());
        if (databaseInfo == null) {
            throw new DataSourceException(DataSourceExceptionEnum.DATASOURCE_NOT_EXIST_ERROR);
        }

        // 如果是租户数据库不能删除
        if (databaseInfo.getDbName().startsWith(TenantConstants.TENANT_DB_PREFIX)) {
            throw new DataSourceException(DataSourceExceptionEnum.DELETE_TENANT_ERROR);
        }

        // 不能删除主数据源
        if (DatabaseConstant.MASTER_DATASOURCE_NAME.equals(databaseInfo.getDbName())) {
            throw new DataSourceException(DataSourceExceptionEnum.CANT_DELETE_MASTER_ERROR);
        }

        // 删除库中的数据源记录
        this.removeById(param.getId());

        // 删除容器中的数据源记录
        DataSourceContext.removeDataSource(databaseInfo.getDbName());

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void edit(DatabaseInfoParam databaseInfoParam) {

        // 不能修改数据源的名称
        DatabaseInfo oldEntity = this.getById(databaseInfoParam.getId());
        if (oldEntity == null) {
            throw new DataSourceException(DataSourceExceptionEnum.DATASOURCE_NOT_EXIST_ERROR);
        }
        if (!databaseInfoParam.getDbName().equals(oldEntity.getDbName())) {
            throw new DataSourceException(DataSourceExceptionEnum.CANT_CHANGE_DBNAME_ERROR);
        }

        // 判断数据库连接是否可用
        validateConnection(databaseInfoParam);

        // 更新库中的记录
        BeanUtil.copyProperties(databaseInfoParam, oldEntity);
        this.updateById(oldEntity);

        // 删除容器中的数据源记录
        DataSourceContext.removeDataSource(oldEntity.getDbName());

        // 往上下文中添加数据源
        DruidProperties druidProperties = DruidFactory.createDruidProperties(oldEntity);
        DruidDataSource druidDataSource = DruidFactory.createDruidDataSource(druidProperties);
        DataSourceContext.addDataSource(databaseInfoParam.getDbName(), druidDataSource, druidProperties);

        // 初始化数据源
        try {
            druidDataSource.init();
        } catch (SQLException exception) {
            throw new DataSourceException(DataSourceExceptionEnum.INIT_DATA_SOURCE_ERROR);
        }

    }

    /**
     * 判断数据库是否可用
     *
     * @author xuyuxiang
     * @date 2020/8/27
     */
    private void validateConnection(DatabaseInfoParam param) {
        Connection conn = null;
        try {
            Class.forName(param.getJdbcDriver());
            conn = DriverManager.getConnection(
                    param.getJdbcUrl(), param.getUserName(), param.getPassword());
        } catch (Exception e) {
            throw new DataSourceException(DataSourceExceptionEnum.INIT_DATASOURCE_ERROR);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * param转化为实体
     *
     * @author xuyuxiang
     * @date 2020/8/27
     */
    private DatabaseInfo parseEntity(DatabaseInfoParam param) {
        DatabaseInfo entity = new DatabaseInfo();
        BeanUtil.copyProperties(param, entity);
        return entity;
    }

}
