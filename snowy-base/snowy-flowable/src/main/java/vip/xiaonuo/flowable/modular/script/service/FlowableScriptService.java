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
package vip.xiaonuo.flowable.modular.script.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.script.entity.FlowableScript;
import vip.xiaonuo.flowable.modular.script.param.FlowableScriptParam;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.util.List;

/**
 * 流程脚本service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:58
 */
public interface FlowableScriptService extends IService<FlowableScript> {

    /**
     * 查询流程脚本
     *
     * @param flowableScriptParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/17 17:14
     */
    PageResult<FlowableScript> page(FlowableScriptParam flowableScriptParam);

    /**
     * 流程脚本列表
     *
     * @param flowableScriptParam 查询参数
     * @return 脚本列表
     * @author xuyuxiang
     * @date 2020/8/13 17:36
     **/
    List<FlowableScript> list(FlowableScriptParam flowableScriptParam);

    /**
     * 添加流程脚本
     *
     * @param flowableScriptParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/17 17:14
     */
    void add(FlowableScriptParam flowableScriptParam);

    /**
     * 删除流程脚本
     *
     * @param flowableScriptParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    void delete(FlowableScriptParam flowableScriptParam);

    /**
     * 编辑流程脚本
     *
     * @param flowableScriptParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    void edit(FlowableScriptParam flowableScriptParam);

    /**
     * 查看流程脚本
     *
     * @param flowableScriptParam 查看参数
     * @return 流程脚本
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    FlowableScript detail(FlowableScriptParam flowableScriptParam);
}
