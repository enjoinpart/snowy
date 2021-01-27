package com.cn.xiaonuo.flowable.core.utils;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.ReflectUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import cn.hutool.log.Log;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.task.api.Task;

import java.lang.reflect.Method;
import java.util.Map;

/**
 * 流程脚本工具类，用于脚本编写
 *
 * @author xuyuxiang
 * @date 2020/5/26 16:46
 */
public class BpmScriptUtil {

    private static final Log log = Log.get();

    public static final String FORM_DATA_VARIABLE_KEY = "formData";

    private static final RuntimeService runtimeService = SpringUtil.getBean(RuntimeService.class);

    private static final TaskService taskService = SpringUtil.getBean(TaskService.class);

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
     * 获取流程表单数据
     *
     * @param delegateExecution 执行实例
     * @author xuyuxiang
     * @date 2021/1/4 10:48
     **/
    public static JSONObject getFormData(DelegateExecution delegateExecution) {
        Map<String, Object> variables = delegateExecution.getVariables();
        cn.hutool.json.JSONObject resultData = new cn.hutool.json.JSONObject();
        variables.forEach((s, o) -> {
            if(FORM_DATA_VARIABLE_KEY.equals(s)) {
                cn.hutool.json.JSONObject jsonObject = JSONUtil.parseObj(o);
                log.info(">>> 获取到的表单数据：{}", jsonObject);
            }
        });
        return resultData;
    }

    /**
     * 利用反射调用service的方法保存表单数据
     *
     * @param serviceName
     * @param methodName
     * @param businessData
     * @author xuyuxiang
     * @date 2021/1/21 14:19
     */
    public static void saveBusinessData(String serviceName, String methodName, JSONObject businessData) {
        if(ObjectUtil.isAllNotEmpty(serviceName, methodName, businessData)) {
            Object serviceClass = SpringUtil.getBean(serviceName);
            if(ObjectUtil.isNull(serviceClass)) {
                log.error(">>> 利用反射调用service的方法保存表单数据错误：service不存在，请检查service是否存在或被spring管理");
            } else {
                Method method = ReflectUtil.getMethod(serviceClass.getClass(), methodName, JSONObject.class);
                if(ObjectUtil.isNull(method)) {
                    log.error(">>> 利用反射调用service的方法保存表单数据错误：方法不存在，请检查方法是否存在或方法参数是否正确");
                } else {
                    try {
                        Object invoke = ReflectUtil.invoke(serviceClass, method, businessData);
                        log.info(">>> 执行保存表单数据完成，保存的参数：{}", businessData);
                    } catch (Exception e) {
                        log.error(">>> 利用反射调用service的方法保存表单数据错误：保存方法执行失败，请参加日志");
                    }
                }
            }
        } else {
            log.error(">>> 利用反射调用service的方法保存表单数据错误：参数不完整");
        }
    }
}
