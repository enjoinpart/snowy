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
package vip.xiaonuo.flowable.modular.form.service;

import vip.xiaonuo.flowable.modular.form.entity.FlowableForm;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.result.FlowableFormResult;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 流程表单service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:25
 */
public interface FlowableFormService extends IService<FlowableForm> {


    /**
     * 流程表单列表
     *
     * @param flowableFormParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    List<FlowableFormResult> list(FlowableFormParam flowableFormParam);

    /**
     * 添加流程表单
     *
     * @param flowableFormParam 添加参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void add(FlowableFormParam flowableFormParam);

    /**
     * 删除流程表单
     *
     * @param flowableFormParam 删除参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void delete(FlowableFormParam flowableFormParam);

    /**
     * 编辑表单
     *
     * @param flowableFormParam 编辑参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void edit(FlowableFormParam flowableFormParam);

    /**
     * 查看表单
     *
     * @param flowableFormParam 查看参数
     * @return 表单结果
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    FlowableForm detail(FlowableFormParam flowableFormParam);

    /**
     * 根据流程定义id删除表单配置
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/8/14 16:08
     **/
    void delete(String processDefinitionId);

    /**
     * 获取启动表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getStartFormData(FlowableFormParam flowableFormParam);

    /**
     * 获取启动表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getGlobalFormData(FlowableFormParam flowableFormParam);

    /**
     * 获取任务表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getTaskFormData(FlowableFormParam flowableFormParam);

    /**
     * 根据表单id判断该表单是否关联流程定义
     *
     * @param formResourceId 表单id
     * @return 是否关联流程定义 true-是，false-否
     * @author xuyuxiang
     * @date 2020/8/16 15:12
     */
    boolean hasDefinition(Long formResourceId);
}
