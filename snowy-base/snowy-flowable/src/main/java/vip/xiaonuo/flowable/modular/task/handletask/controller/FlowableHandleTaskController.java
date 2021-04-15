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
package vip.xiaonuo.flowable.modular.task.handletask.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.context.constant.ConstantContextHolder;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.exception.DemoException;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.task.handletask.param.FlowableHandleTaskParam;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableHandleTaskService;
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
 * 任务办理控制器
 *
 * @author xuyuxiang
 * @date 2020/8/4 21:27
 */
@RestController
public class FlowableHandleTaskController {

    @Resource
    private FlowableHandleTaskService flowableHandleTaskService;

    @Permission
    @PostMapping("/flowableHandleTask/start")
    @BusinessLog(title = "任务办理_启动", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData start(@RequestBody @Validated(FlowableHandleTaskParam.start.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.start(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/submit")
    @BusinessLog(title = "任务办理_提交", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData submit(@RequestBody @Validated(FlowableHandleTaskParam.submit.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.submit(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/save")
    @BusinessLog(title = "任务办理_保存", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData save(@RequestBody @Validated(FlowableHandleTaskParam.add.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.save(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/back")
    @BusinessLog(title = "任务办理_退回", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData back(@RequestBody @Validated(FlowableHandleTaskParam.back.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.back(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/turn")
    @BusinessLog(title = "任务办理_转办", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData turn(@RequestBody @Validated(FlowableHandleTaskParam.turn.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.turn(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/entrust")
    @BusinessLog(title = "任务办理_委托", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData entrust(@RequestBody @Validated(FlowableHandleTaskParam.entrust.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.entrust(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/jump")
    @BusinessLog(title = "任务办理_跳转", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData jump(@RequestBody @Validated(FlowableHandleTaskParam.jump.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.jump(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/end")
    @BusinessLog(title = "任务办理_终止", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData end(@RequestBody @Validated(FlowableHandleTaskParam.end.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.end(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/suspend")
    @BusinessLog(title = "任务办理_挂起", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData suspend(@RequestBody @Validated(FlowableHandleTaskParam.suspend.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.suspend(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/addSign")
    @BusinessLog(title = "任务办理_加签", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData addSign(@RequestBody @Validated(FlowableHandleTaskParam.addSign.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.addSign(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @PostMapping("/flowableHandleTask/deleteSign")
    @BusinessLog(title = "任务办理_减签", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData deleteSign(@RequestBody @Validated(FlowableHandleTaskParam.deleteSign.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableHandleTaskService.deleteSign(flowableHandleTaskParam);
        return new SuccessResponseData();
    }

    @Permission
    @GetMapping("/flowableHandleTask/taskData")
    @BusinessLog(title = "任务办理_数据", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData taskData(@Validated(FlowableHandleTaskParam.trace.class) FlowableHandleTaskParam flowableHandleTaskParam) {
        return new SuccessResponseData(flowableHandleTaskService.taskData(flowableHandleTaskParam));
    }
}
