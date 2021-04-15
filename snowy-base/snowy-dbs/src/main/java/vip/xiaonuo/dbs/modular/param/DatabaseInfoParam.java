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
package vip.xiaonuo.dbs.modular.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.validation.unique.TableUniqueValue;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * <p>
 * 数据库信息表
 * </p>
 *
 * @author yubaoshan
 * @since 2019-06-15
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class DatabaseInfoParam extends BaseParam {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class})
    private Long id;

    /**
     * 数据库名称（英文名称）
     */
    @NotBlank(message = "数据库名称不能为空，请检查dbName参数", groups = {add.class, edit.class})
    @TableUniqueValue(
            message = "数据库名称存在重复，请检查dbName参数",
            groups = {add.class, edit.class},
            tableName = "sys_database_info",
            columnName = "db_name")
    private String dbName;

    /**
     * jdbc的驱动类型
     */
    @NotBlank(message = "jdbc的驱动类型，请检查jdbcDriver参数", groups = {add.class, edit.class})
    private String jdbcDriver;

    /**
     * 数据库连接的账号
     */
    @NotBlank(message = "数据库连接的账号，请检查userName参数", groups = {add.class, edit.class})
    private String userName;

    /**
     * 数据库连接密码
     */
    @NotBlank(message = "数据库连接密码，请检查password参数", groups = {add.class, edit.class})
    private String password;

    /**
     * jdbc的url
     */
    @NotBlank(message = "jdbc的url，请检查jdbcUrl参数", groups = {add.class, edit.class})
    private String jdbcUrl;

    /**
     * 备注，摘要
     */
    private String remarks;

    /**
     * 创建时间
     */
    private Date createTime;

}
