package com.cn.xiaonuo.tenant.modular.service;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.db.DbUtil;
import cn.hutool.db.sql.SqlExecutor;
import cn.hutool.extra.spring.SpringUtil;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.druid.DruidProperties;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.core.tenant.entity.TenantInfo;
import com.cn.xiaonuo.core.tenant.exception.TenantException;
import com.cn.xiaonuo.core.tenant.exception.enums.TenantExceptionEnum;
import com.cn.xiaonuo.core.tenant.params.TenantInfoParam;
import com.cn.xiaonuo.core.tenant.service.TenantInfoService;
import com.cn.xiaonuo.dbs.core.context.DataSourceContext;
import com.cn.xiaonuo.dbs.modular.entity.DatabaseInfo;
import com.cn.xiaonuo.dbs.modular.param.DatabaseInfoParam;
import com.cn.xiaonuo.dbs.modular.service.DatabaseInfoService;
import com.cn.xiaonuo.tenant.core.util.DatabaseUtil;
import com.cn.xiaonuo.tenant.core.util.SqlRunUtil;
import com.cn.xiaonuo.tenant.modular.factory.DataBaseInfoFactory;
import com.cn.xiaonuo.tenant.modular.mapper.TenantInfoMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cn.xiaonuo.tenant.core.util.DatabaseUtil;
import com.cn.xiaonuo.tenant.core.util.SqlRunUtil;
import com.cn.xiaonuo.tenant.modular.factory.DataBaseInfoFactory;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

import static com.cn.xiaonuo.core.tenant.consts.TenantConstants.INIT_SQL_FILE_NAME;
import static com.cn.xiaonuo.core.tenant.consts.TenantConstants.TENANT_DB_PREFIX;

/**
 * <p>
 * 租户表 服务实现类
 * </p>
 *
 * @author yubaoshan
 * @since 2019-06-16
 */
@Service
public class TenantInfoServiceImpl extends ServiceImpl<TenantInfoMapper, TenantInfo> implements TenantInfoService {

    /**
     * 更新语句
     */
    public static final String UPDATE_SQL = "update sys_user set password = ? where account = 'superAdmin'";

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void add(TenantInfoParam param) {

        // 创建租户数据库
        DruidProperties druidProperties = SpringUtil.getBean(DruidProperties.class);
        String databaseName = TENANT_DB_PREFIX + param.getCode();
        DatabaseUtil.createDatabase(druidProperties, databaseName);

        // 创建租户的数据源记录
        DatabaseInfoService databaseInfoService;
        try {
            databaseInfoService = SpringUtil.getBean(DatabaseInfoService.class);
        } catch (Exception e) {
            throw new TenantException(TenantExceptionEnum.DBS_MODULAR_NOT_ENABLE_ERROR);
        }
        DatabaseInfoParam dataBaseInfo = DataBaseInfoFactory.createDataBaseInfo(druidProperties, databaseName);
        databaseInfoService.add(dataBaseInfo);

        // 初始化租户的数据库
        SqlRunUtil.runClassPathSql(INIT_SQL_FILE_NAME, databaseName);

        // 插入租户记录
        TenantInfo tenantInfo = new TenantInfo();
        BeanUtil.copyProperties(param, tenantInfo);
        tenantInfo.setDbName(databaseName);
        this.save(tenantInfo);

        // 切换数据源到新的租户,初始化新租户的用户名和密码
        String hashPw = BCrypt.hashpw(param.getAdminPassword(), BCrypt.gensalt());
        DataSource dataSource = DataSourceContext.getDataSources().get(databaseName);
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            SqlExecutor.execute(connection, UPDATE_SQL, hashPw);
        } catch (SQLException e) {
            log.error(">>> 更新多租户的用户密码错误！", e);
            throw new TenantException(TenantExceptionEnum.UPDATE_TENANT_PASSWORD_ERROR);
        } finally {
            DbUtil.close(connection);
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(TenantInfoParam param) {

        // 获取租户信息
        TenantInfo tenantInfo = this.getById(param.getId());

        // 删除租户信息
        this.removeById(param.getId());

        // 删除对应的数据源
        DatabaseInfoService databaseInfoService;
        try {
            databaseInfoService = SpringUtil.getBean(DatabaseInfoService.class);
        } catch (Exception e) {
            throw new TenantException(TenantExceptionEnum.DBS_MODULAR_NOT_ENABLE_ERROR);
        }

        // 删除对应的数据源信息
        LambdaQueryWrapper<DatabaseInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(DatabaseInfo::getDbName, tenantInfo.getDbName());
        databaseInfoService.remove(queryWrapper);

        // 删除数据库
        DruidProperties druidProperties = SpringUtil.getBean(DruidProperties.class);
        DatabaseUtil.dropDatabase(druidProperties, tenantInfo.getDbName());

        // 删除容器中的数据源记录
        DataSourceContext.removeDataSource(tenantInfo.getDbName());
    }

    @Override
    public void update(TenantInfoParam param) {

        // 找不到租户信息
        TenantInfo tenantInfo = this.getById(param.getId());
        if (tenantInfo == null) {
            throw new TenantException(TenantExceptionEnum.CNAT_FIND_TENANT_ERROR);
        }

        BeanUtil.copyProperties(param, tenantInfo);

        this.updateById(tenantInfo);
    }

    @Override
    public PageResult<TenantInfo> page(TenantInfoParam param) {
        LambdaQueryWrapper<TenantInfo> queryWrapper = new LambdaQueryWrapper<>();

        if (ObjectUtil.isNotNull(param)) {
            //根据名称模糊查询
            if (ObjectUtil.isNotEmpty(param.getName())) {
                queryWrapper.like(TenantInfo::getName, param.getName());
            }
        }
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public TenantInfo getByCode(String code) {
        LambdaQueryWrapper<TenantInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(TenantInfo::getCode, code);
        return this.getOne(queryWrapper);
    }

}
