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
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
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
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;

import javax.annotation.Resource;

/**
 * 流程表单控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:23
 */
@RestController
public class FlowableFormController {

    @Resource(name = "snowyFlowableFormService")
    private FlowableFormService flowableFormService;

    /**
     * 流程表单列表
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:02
     **/
    @Permission
    @GetMapping("/flowableForm/list")
    @BusinessLog(title = "流程表单_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(@Validated(BaseParam.list.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.list(flowableFormParam));
    }

    /**
     * 添加流程表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:57
     **/
    @Permission
    @PostMapping("/flowableForm/add")
    @BusinessLog(title = "流程表单_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(BaseParam.add.class) FlowableFormParam flowableFormParam) {
        flowableFormService.add(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableForm/delete")
    @BusinessLog(title = "流程表单_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(BaseParam.delete.class) FlowableFormParam flowableFormParam) {
        flowableFormService.delete(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableForm/edit")
    @BusinessLog(title = "流程表单_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(BaseParam.edit.class) FlowableFormParam flowableFormParam) {
        flowableFormService.edit(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单查看
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableForm/detail")
    @BusinessLog(title = "流程表单_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(BaseParam.detail.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.detail(flowableFormParam));
    }

    /**
     * 流程定义的启动表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/startFormData")
    @BusinessLog(title = "流程表单_启动表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData startFormData(@Validated(BaseParam.trace.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getStartFormData(flowableFormParam));
    }

    /**
     * 流程定义的全局表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/globalFormData")
    @BusinessLog(title = "流程表单_全局表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData globalFormData(@Validated(BaseParam.trace.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getGlobalFormData(flowableFormParam));
    }

    /**
     * 当前任务的任务表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/taskFormData")
    @BusinessLog(title = "流程表单_任务表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData taskFormData(@Validated(BaseParam.force.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getTaskFormData(flowableFormParam));
    }
}
