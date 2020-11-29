package com.cn.xiaonuo.flowable.modular.category.service;


import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.category.entity.FlowableCategory;
import com.cn.xiaonuo.flowable.modular.category.param.FlowableCategoryParam;
import com.cn.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cn.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;

import java.util.List;

/**
 * 流程分类service接口
 *
 * @author xuyuxiang
 * @date 2020/4/13 11:28
 */
public interface FlowableCategoryService extends IService<FlowableCategory> {

    /**
     * 流程分类查询
     *
     * @param flowableCategoryParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/13 11:29
     */
    PageResult<FlowableCategory> page(FlowableCategoryParam flowableCategoryParam);

    /**
     * 流程分类列表
     *
     * @param flowableCategoryParam 查询分类参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/6/22 16:37
     */
    List<FlowableCategory> list(FlowableCategoryParam flowableCategoryParam);

    /**
     * 添加流程分类
     *
     * @param flowableCategoryParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/13 11:29
     */
    void add(FlowableCategoryParam flowableCategoryParam);

    /**
     * 删除流程分类
     *
     * @param flowableCategoryParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/13 11:29
     */
    void delete(FlowableCategoryParam flowableCategoryParam);

    /**
     * 编辑流程分类
     *
     * @param flowableCategoryParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/13 11:29
     */
    void edit(FlowableCategoryParam flowableCategoryParam);

    /**
     * 查看流程分类
     *
     * @param flowableCategoryParam 查看参数
     * @return 分类结果
     * @author xuyuxiang
     * @date 2020/4/13 14:13
     */
    FlowableCategoryResult detail(FlowableCategoryParam flowableCategoryParam);

    /**
     * 根据流程分类编码获取名称
     *
     * @param categoryCode 分类编码
     * @return 分类名称
     * @author xuyuxiang
     * @date 2020/6/29 17:47
     */
    String getNameByCode(String categoryCode);
}

