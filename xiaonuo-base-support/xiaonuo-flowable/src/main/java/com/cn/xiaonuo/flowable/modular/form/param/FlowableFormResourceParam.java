package com.cn.xiaonuo.flowable.modular.form.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 表单管理参数
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableFormResourceParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class, force.class})
    private Long id;

    /**
     * 表单编码
     */
    @NotBlank(message = "表单编码不能为空，请检查code参数", groups = {add.class, edit.class})
    private String code;

    /**
     * 表单名称
     */
    @NotBlank(message = "表单名称不能为空，请检查name参数", groups = {add.class, edit.class})
    private String name;

    /**
     * 表单分类
     */
    @NotBlank(message = "表单分类不能为空，请检查category参数", groups = {add.class, edit.class})
    private String category;

    /**
     * 表单json数据
     */
    @NotBlank(message = "表单json数据不能为空，请检查formJson参数", groups = {force.class})
    private String formJson;

    /**
     * 备注
     */
    private String remark;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    @NotNull(message = "状态不能为空，请检查status参数", groups = changeStatus.class)
    private Integer status;

}
