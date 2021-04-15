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
package vip.xiaonuo.flowable.modular.event.service;

import vip.xiaonuo.flowable.modular.event.entity.FlowableEvent;
import vip.xiaonuo.flowable.modular.event.param.FlowableEventParam;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 流程事件service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:56
 */
public interface FlowableEventService extends IService<FlowableEvent> {

    /**
     * 添加流程事件
     *
     * @param flowableEventParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void add(FlowableEventParam flowableEventParam);

    /**
     * 删除流程事件
     *
     * @param flowableEventParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void delete(FlowableEventParam flowableEventParam);

    /**
     * 编辑流程事件
     *
     * @param flowableEventParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void edit(FlowableEventParam flowableEventParam);

    /**
     * 查看流程事件
     *
     * @param flowableEventParam 查看参数
     * @return 事件结果
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    FlowableEvent detail(FlowableEventParam flowableEventParam);

    /**
     * 流程事件列表
     *
     * @param flowableEventParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    List<FlowableEvent> list(FlowableEventParam flowableEventParam);

    /**
     * 根据流程定义id删除流程事件
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/4/24 15:34
     */
    void delete(String processDefinitionId);

    /**
     * 根据事件类型获取脚本
     *
     * @param processDefinitionId 流程定义id
     * @param actId               活动节点id
     * @param eventType           事件类型
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/6/1 16:11
     */
    List<String> getScript(String processDefinitionId, String actId, String eventType);
}
