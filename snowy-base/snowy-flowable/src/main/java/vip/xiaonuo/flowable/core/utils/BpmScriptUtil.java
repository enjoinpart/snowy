package vip.xiaonuo.flowable.core.utils;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import cn.hutool.log.Log;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/**
 * 流程脚本工具类，用于脚本编写
 *
 * @author xuyuxiang
 * @date 2020/5/26 16:46
 */
@Component
public class BpmScriptUtil {

    private static final Log log = Log.get();

    public static final String FORM_DATA_VARIABLE_KEY = "formData";

    /**
     * 给流程实例设置变量
     *
     * @param delegateExecution 执行实例
     * @param variableName      变量名
     * @param variableValue     变量值
     * @author xuyuxiang
     * @date 2020/9/11 15:24
     **/
    public static void setVariableForInstance(DelegateExecution delegateExecution,
                                              String variableName,
                                              Object variableValue) {
        RuntimeService runtimeService = SpringUtil.getBean(RuntimeService.class);
        if (ObjectUtil.isNotNull(delegateExecution)) {
            String processInstanceId = delegateExecution.getProcessInstanceId();
            runtimeService.setVariable(processInstanceId, variableName, variableValue);
        } else {
            log.error(">>> 设置变量异常，执行实例不存在");
        }
    }

    /**
     * 给任务设置变量
     *
     * @param delegateExecution 执行实例
     * @param variableName      变量名
     * @param variableValue     变量值
     * @author xuyuxiang
     * @date 2020/9/11 15:24
     **/
    public static void setVariableForTask(DelegateExecution delegateExecution,
                                          String variableName,
                                          Object variableValue) {
        RuntimeService runtimeService = SpringUtil.getBean(RuntimeService.class);
        TaskService taskService = SpringUtil.getBean(TaskService.class);
        if (ObjectUtil.isNotNull(delegateExecution)) {
            String executionId = delegateExecution.getId();
            Task task = taskService.createTaskQuery().executionId(executionId).singleResult();
            if (ObjectUtil.isNotNull(task)) {
                taskService.setVariable(task.getId(), variableName, variableValue);
            } else {
                log.error(">>> 设置变量异常，任务不存在");
            }
        } else {
            log.error(">>> 设置变量异常，执行实例不存在");
        }
    }

    /**
     * 获取流程表单数据，可以通过修改此接口，将获取到的表单数据保存到自己的业务表
     *
     * @param delegateExecution 执行实例
     * @return 表单数据的map
     * @author xuyuxiang
     * @date 2021/1/4 10:48
     **/
    public static Map<String, Object> getFormData(DelegateExecution delegateExecution) {
        Map<String, Object> variables = delegateExecution.getVariables();
        AtomicReference<Map<String, Object>> formData = new AtomicReference<>();
        variables.forEach((s, o) -> {
            //名字为formData的参数，就是表单数据，因此注意只能有一个参数formData，否则前面的会被后面的覆盖
            if(FORM_DATA_VARIABLE_KEY.equals(s)) {
                JSONObject jsonObject = JSONUtil.parseObj(o);
                formData.set(jsonObject);
                //此处可以自定义处理
                log.info(">>> 任务完成时接受到的表单数据:{}", jsonObject);
            }
        });
        return formData.get();
    }

    /**
     * 获取流程表单数据的key对应的value
     *
     * @param key 表单数据key
     * @return 表单数据key对应的value
     * @author xuyuxiang
     * @date 2021/2/4 12:04
     */
    public static Object getFormDataKey(DelegateExecution delegateExecution, String key) {
        Map<String, Object> formData = getFormData(delegateExecution);
        if(ObjectUtil.isNotEmpty(formData)) {
            return formData.get(key);
        }
        return null;
    }
}
