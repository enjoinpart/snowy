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
package vip.xiaonuo.flowable.modular.model.service;

import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 流程模型service接口
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:12
 */
public interface FlowableModelService {

    /**
     * 流程模型列表
     *
     * @param flowableModelParam 流程模型参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/8/15 23:15
     */
    List<FlowableModelResult> list(FlowableModelParam flowableModelParam);

    /**
     * 流程模型添加
     *
     * @param flowableModelParam 添加参数
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    String add(FlowableModelParam flowableModelParam);

    /**
     * 流程模型删除
     *
     * @param flowableModelParam 删除参数
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    void delete(FlowableModelParam flowableModelParam);

    /**
     * 流程模型编辑
     *
     * @param flowableModelParam 编辑参数
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    String edit(FlowableModelParam flowableModelParam);

    /**
     * 流程模型预览
     *
     * @param flowableModelParam 预览参数
     * @return 模型xml
     * @author xuyuxiang
     * @date 2020/8/15 23:17
     */
    String preview(FlowableModelParam flowableModelParam);

    /**
     * 流程模型版本列表
     *
     * @param flowableModelParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/8/16 1:51
     */
    List<FlowableModelResult> version(FlowableModelParam flowableModelParam);

    /**
     * 流程模型设为新版
     *
     * @param flowableModelParam 参数
     * @author xuyuxiang
     * @date 2020/8/16 2:06
     */
    void setAsNew(FlowableModelParam flowableModelParam);

    /**
     * 流程模型导入
     *
     * @param file 导入的文件
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/16 15:48
     */
    String importModel(MultipartFile file);
}
