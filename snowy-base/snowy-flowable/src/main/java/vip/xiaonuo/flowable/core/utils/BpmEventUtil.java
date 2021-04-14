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
