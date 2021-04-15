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
package vip.xiaonuo.flowable.core.utils;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.flowable.modular.event.service.FlowableEventService;
import groovy.lang.Binding;
import groovy.lang.GroovyShell;
import org.flowable.engine.delegate.DelegateExecution;

import java.util.List;

/**
 * 流程事件工具类，用于流程状态发生变换时同步更改业务表状态等
 *
 * @author xuyuxiang
 * @date 2020/4/16 11:56
 */
public class BpmEventUtil {

    /**
     * 执行实例参数名
     */
    private static final String EXECUTION = "execution";

    private static final FlowableEventService flowableEventService = SpringUtil.getBean(FlowableEventService.class);

    /**
     * 执行单个脚本
     *
     * @author xuyuxiang
     * @date 2020/6/1 16:08
     */
    public static void executeScript(DelegateExecution execution, String script) {
        if (ObjectUtil.isNotEmpty(script)) {
            Binding binding = new Binding();
            //设置参数
            binding.setVariable(EXECUTION, execution);
            GroovyShell shell = new GroovyShell(binding);
            shell.evaluate(script);
        }
    }

    /**
     * 执行多个脚本
     *
     * @author xuyuxiang
     * @date 2020/6/1 16:18
     */
    private static void executeScriptList(DelegateExecution execution, List<String> scriptList) {
        scriptList.forEach(script -> executeScript(execution, script));
    }


    /**
     * 根据事件类型获取脚本
     *
     * @author xuyuxiang
     * @date 2020/6/1 16:10
     */
    public static List<String> getScript(String processDefinitionId, String actId, String eventType) {
        return flowableEventService.getScript(processDefinitionId, actId, eventType);
    }

    /**
     * 根据事件类型获取脚本并执行
     *
     * @author xuyuxiang
     * @date 2020/6/1 16:19
     */
    public static void getAndExecuteScript(DelegateExecution execution, String eventType) {
        //当前节点id
        String actId = execution.getCurrentActivityId();
        //流程定义id
        String processDefinitionId = execution.getProcessDefinitionId();
        //获取脚本
        List<String> scriptList = getScript(processDefinitionId, actId, eventType);
        if (ObjectUtil.isNotEmpty(scriptList)) {
            //执行脚本
            executeScriptList(execution, scriptList);
        }
    }
}
