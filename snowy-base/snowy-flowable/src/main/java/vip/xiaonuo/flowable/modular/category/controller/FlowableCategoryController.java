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
package vip.xiaonuo.flowable.modular.category.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.category.param.FlowableCategoryParam;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 流程分类控制器
 *
 * @author xuyuxiang
 * @date 2020/4/13 11:24
 */
@RestController
public class FlowableCategoryController {

    @Resource
    private FlowableCategoryService flowableCategoryService;

    /**
     * 流程分类查询
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @GetMapping("/flowableCategory/page")
    @BusinessLog(title = "流程分类_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.page(flowableCategoryParam));
    }

    /**
     * 流程分类列表
     *
     * @author xuyuxiang
     * @date 2020/6/22 16:37
     */
    @Permission
    @GetMapping("/flowableCategory/list")
    @BusinessLog(title = "流程分类_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.list(flowableCategoryParam));
    }

    /**
     * 添加流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/add")
    @BusinessLog(title = "系流程分类_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableCategoryParam.add.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.add(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/delete")
    @BusinessLog(title = "流程分类_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableCategoryParam.delete.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.delete(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 编辑流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/edit")
    @BusinessLog(title = "流程分类_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableCategoryParam.edit.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.edit(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:26
     */
    @Permission
    @GetMapping("/flowableCategory/detail")
    @BusinessLog(title = "流程分类_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableCategoryParam.detail.class) FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.detail(flowableCategoryParam));
    }
}
