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
package vip.xiaonuo.flowable.modular.instance.result;

import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;

import java.util.Date;

/**
 * 流程实例结果集
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:45
 */
@Data
public class FlowableInstanceResult {

    /**
     * 流程实例id
     */
    private String id;

    /**
     * 流程实例名称
     */
    private String name;

    /**
     * 业务主键
     */
    private String businessKey;

    /**
     * 流程开启时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    /**
     * 格式化后的流程开启时间（如3分钟前）
     */
    private String formatStartTime;

    /**
     * 流程结束时间
     */
    private Date endTime;

    /**
     * 格式化后的流程结束时间（如3分钟前）
     */
    private String formatEndTime;

    /**
     * 流程发起人id
     */
    private String startUserId;

    /**
     * 流程发起人姓名
     */
    private String startUserName;

    /**
     * 是否结束
     */
    private Boolean ended;

    /**
     * 流程实例是否挂起
     */
    private Boolean suspended;

    /**
     * 流程定义相关
     */
    private FlowableDefinitionResult procDef;
}
