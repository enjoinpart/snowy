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
package vip.xiaonuo.flowable.modular.shortcut.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.node.FlowableShortcutTreeNode;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;

import java.util.List;

/**
 * 流程申请入口service接口
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:49
 */
public interface FlowableShortcutService extends IService<FlowableShortcut> {

    /**
     * 流程申请入口查询
     *
     * @param flowableShortcutParam 添加参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/6/30 11:23
     */
    PageResult<FlowableShortcut> page(FlowableShortcutParam flowableShortcutParam);

    /**
     * 流程申请入口列表
     *
     * @param flowableShortcutParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    List<FlowableShortcutTreeNode> list(FlowableShortcutParam flowableShortcutParam);

    /**
     * 添加流程申请入口
     *
     * @param flowableShortcutParam 添加参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void add(FlowableShortcutParam flowableShortcutParam);

    /**
     * 删除流程申请入口
     *
     * @param flowableShortcutParam 删除参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void delete(FlowableShortcutParam flowableShortcutParam);

    /**
     * 根据流程定义id删除入口
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/8/12 9:52
     **/
    void delete(String processDefinitionId);

    /**
     * 编辑流程申请入口
     *
     * @param flowableShortcutParam 编辑参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void edit(FlowableShortcutParam flowableShortcutParam);

    /**
     * 查看流程申请入口
     *
     * @param flowableShortcutParam 查询参数
     * @return 申请入口
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    FlowableShortcut detail(FlowableShortcutParam flowableShortcutParam);

    /**
     * 根据流程定义id修改申请入口状态（字典 0正常 1停用 2删除）
     *
     * @param processDefinitionId 流程定义id
     * @param status              要修改的状态
     * @author xuyuxiang
     * @date 2020/8/12 9:48
     **/
    void changeStatus(String processDefinitionId, Integer status);
}
