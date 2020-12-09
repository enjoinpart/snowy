package com.cn.xiaonuo.flowable.core.utils;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.log.Log;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.delegate.DelegateExecution;
import org.flowable.task.api.Task;

/**
 * 流程脚本工具类，用于脚本编写
 *
 * @author xuyuxiang
 * @date 2020/5/26 16:46
 */
public class BpmScriptUtil {

    private static final Log log = Log.get();

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
}
