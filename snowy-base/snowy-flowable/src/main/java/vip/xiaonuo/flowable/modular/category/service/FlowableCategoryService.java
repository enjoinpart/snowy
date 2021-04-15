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
package vip.xiaonuo.flowable.modular.category.service;


import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.category.entity.FlowableCategory;
import vip.xiaonuo.flowable.modular.category.param.FlowableCategoryParam;
import vip.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;

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

