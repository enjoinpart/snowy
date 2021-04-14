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
