package vip.xiaonuo.dbs.core.exception.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.dbs.core.consts.DataSourceExpEnumConstant;

/**
 * 数据源初始化异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/24
 */
@ExpEnumType(module = DataSourceExpEnumConstant.DATASOURCE_MODULE_EXP_CODE, kind = DataSourceExpEnumConstant.DATASOURCE_EXCEPTION_ENUM)
public enum DataSourceExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 获取主数据源异常
     */
    DATA_SOURCE_READ_ERROR(1, "获取主数据源异常"),

    /**
     * 初始化数据源异常
     */
    INIT_DATA_SOURCE_ERROR(2, "初始化数据源异常"),

    /**
     * 不能删除租户数据源
     */
    DELETE_TENANT_ERROR(3, "不能删除租户数据源"),

    /**
     * 数据源已存在，请更换名称
     */
    REPEAT_ERROR(4, "数据源已存在，请更换名称！"),

    /**
     * 数据源连接错误，请检查连接配置！
     */
    INIT_DATASOURCE_ERROR(5, "数据源连接错误，请检查连接配置！"),

    /**
     * 当前上下文中已存在该名称，请重启项目或更换名称
     */
    NAME_REPEAT_ERROR(6, "当前上下文中已存在该名称，请重启项目或更换名称！"),

    /**
     * 查询数据库中数据源信息错误
     */
    QUERY_DATASOURCE_INFO_ERROR(7, "查询数据库中数据源信息错误"),

    /**
     * 获取不到数据源信息
     */
    DATASOURCE_NOT_EXIST_ERROR(8, "获取不到数据源信息"),

    /**
     * 不能修改数据源名称
     */
    CANT_CHANGE_DBNAME_ERROR(9, "不能修改数据源名称"),

    /**
     * 不能删除主数据源
     */
    CANT_DELETE_MASTER_ERROR(10, "不能删除主数据源");

    DataSourceExceptionEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }

    private final Integer code;

    private final String message;

    @Override
    public Integer getCode() {
        return ExpEnumCodeFactory.getExpEnumCode(this.getClass(), code);
    }

    @Override
    public String getMessage() {
        return message;
    }

}
