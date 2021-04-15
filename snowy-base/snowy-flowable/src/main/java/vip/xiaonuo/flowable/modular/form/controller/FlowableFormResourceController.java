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
package vip.xiaonuo.flowable.modular.form.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;

import javax.annotation.Resource;

/**
 * 表单管理控制器
 *
 * @author xuyuxiang
 * @date 2020/8/14 14:57
 **/
@RestController
public class FlowableFormResourceController {

    @Resource
    private FlowableFormResourceService flowableFormResourceService;

    /**
     * 表单查询
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:02
     **/
    @Permission
    @GetMapping("/flowableFormResource/page")
    @BusinessLog(title = "表单管理_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.page(flowableFormResourceParam));
    }

    /**
     * 表单查询
     *
     * @author xuyuxiang
     * @date 2020/8/17 18:00
     **/
    @Permission
    @GetMapping("/flowableFormResource/list")
    @BusinessLog(title = "表单管理_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.list(flowableFormResourceParam));
    }

    /**
     * 添加表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:57
     **/
    @Permission
    @PostMapping("/flowableFormResource/add")
    @BusinessLog(title = "表单管理_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(BaseParam.add.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.add(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableFormResource/delete")
    @BusinessLog(title = "表单管理_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(BaseParam.delete.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.delete(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableFormResource/edit")
    @BusinessLog(title = "表单管理_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(BaseParam.edit.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.edit(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单设计
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableFormResource/design")
    @BusinessLog(title = "表单管理_设计", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData design(@RequestBody @Validated(BaseParam.edit.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.design(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单查看
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @GetMapping("/flowableFormResource/detail")
    @BusinessLog(title = "表单管理_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(BaseParam.detail.class) FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.detail(flowableFormResourceParam));
    }


}
