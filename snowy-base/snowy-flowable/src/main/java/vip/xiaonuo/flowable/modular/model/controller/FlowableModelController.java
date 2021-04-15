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
package vip.xiaonuo.flowable.modular.model.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.context.constant.ConstantContextHolder;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.exception.DemoException;
import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.service.FlowableModelService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 流程模型控制器
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:11
 */
@RestController
public class FlowableModelController {

    @Resource
    private FlowableModelService flowableModelService;

    /**
     * 查询流程模型
     *
     * @author xuyuxiang
     * @date 2020/8/15 17:21
     */
    @Permission
    @GetMapping("/flowableModel/list")
    @BusinessLog(title = "流程模型_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.list(flowableModelParam));
    }

    /**
     * 流程模型增加
     *
     * @author xuyuxiang
     * @date 2020/8/15 17:15
     */
    @Permission
    @PostMapping("/flowableModel/add")
    @BusinessLog(title = "流程模型_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableModelParam.add.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.add(flowableModelParam));
    }

    /**
     * 流程模型删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/delete")
    @BusinessLog(title = "流程模型_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableModelParam.delete.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableModelService.delete(flowableModelParam);
        return new SuccessResponseData();
    }

    /**
     * 流程模型编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableModel/edit")
    @BusinessLog(title = "流程模型_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableModelParam.edit.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.edit(flowableModelParam));
    }

    /**
     * 流程模型预览
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:14
     */
    @Permission
    @GetMapping("/flowableModel/preview")
    @BusinessLog(title = "流程模型_预览", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData preview(@Validated(BaseParam.detail.class) FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.preview(flowableModelParam));
    }

    /**
     * 模型版本
     *
     * @author xuyuxiang
     * @date 2020/8/16 1:50
     */
    @Permission
    @GetMapping("/flowableModel/version")
    @BusinessLog(title = "流程模型_版本", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData version(@Validated(FlowableModelParam.trace.class) FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.version(flowableModelParam));
    }

    /**
     * 流程模型设为新版
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/setAsNew")
    @BusinessLog(title = "流程模型_设为新版", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData setAsNew(@RequestBody @Validated(FlowableModelParam.force.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableModelService.setAsNew(flowableModelParam);
        return new SuccessResponseData();
    }

    /**
     * 流程模型导入
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/importModel")
    @BusinessLog(title = "流程模型_导入", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData importModel(@RequestPart("file") MultipartFile file) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.importModel(file));
    }

}
