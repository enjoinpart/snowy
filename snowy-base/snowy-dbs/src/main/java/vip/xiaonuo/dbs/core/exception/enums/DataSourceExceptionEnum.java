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
