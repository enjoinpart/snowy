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
package vip.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 流程事件类型枚举
 *
 * @author xuyuxiang
 * @date 2020/5/28 16:46
 */
@Getter
public enum EventTypeEnum {

    /**
     * 流程启动
     */
    PROCESS_STARTED("PROCESS_STARTED", "流程启动"),

    /**
     * 流程完成
     */
    PROCESS_COMPLETED("PROCESS_COMPLETED", "流程完成"),

    /**
     * 流程取消
     */
    PROCESS_CANCELLED("PROCESS_CANCELLED", "流程取消"),

    /**
     * 活动开始
     */
    ACTIVITY_STARTED("ACTIVITY_STARTED", "活动开始"),

    /**
     * 活动完成
     */
    ACTIVITY_COMPLETED("ACTIVITY_COMPLETED", "活动完成"),

    /**
     * 活动取消
     */
    ACTIVITY_CANCELLED("ACTIVITY_CANCELLED", "活动取消"),

    /**
     * 任务分配
     */
    TASK_ASSIGNED("TASK_ASSIGNED", "任务分配"),

    /**
     * 任务创建
     */
    TASK_CREATED("TASK_CREATED", "任务创建"),

    /**
     * 任务完成
     */
    TASK_COMPLETED("TASK_COMPLETED", "任务完成"),

    /**
     * 连接线事件
     */
    SEQUENCEFLOW_TAKEN("SEQUENCEFLOW_TAKEN", "连接线事件");


    private final String code;

    private final String message;

    EventTypeEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
