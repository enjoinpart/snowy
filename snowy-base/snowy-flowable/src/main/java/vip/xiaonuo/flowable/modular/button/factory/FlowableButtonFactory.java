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
package vip.xiaonuo.flowable.modular.button.factory;

import vip.xiaonuo.core.enums.YesOrNotEnum;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;

/**
 * 流程按钮工厂类
 *
 * @author xuyuxiang
 * @date 2020/6/8 11:56
 */
public class FlowableButtonFactory {

    /**
     * 构造默认的按钮结果集，用于某些节点没配置按钮信息时，默认拥有提交、保存和退回按钮
     *
     * @author xuyuxiang
     * @date 2020/6/8 11:57
     */
    public static FlowableButtonResult genFlowableButtonResult() {
        FlowableButtonResult flowableButtonResult = new FlowableButtonResult();
        flowableButtonResult.setSubmitBtn(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setSaveBtn(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setBackBtn(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setTurnBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setNextBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setEntrustBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setEndBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setTraceBtn(YesOrNotEnum.Y.getCode());
        flowableButtonResult.setSuspendBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setJumpBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setAddSignBtn(YesOrNotEnum.N.getCode());
        flowableButtonResult.setDeleteSignBtn(YesOrNotEnum.N.getCode());
        return flowableButtonResult;
    }
}
