package com.cn.xiaonuo.flowable.modular.task.todotask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.consts.SymbolConstant;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.task.todotask.factory.FlowableTodoTaskFactory;
import com.cn.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import com.cn.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;
import com.cn.xiaonuo.flowable.modular.task.todotask.service.FlowableTodoTaskService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cn.xiaonuo.flowable.modular.task.todotask.factory.FlowableTodoTaskFactory;
import com.cn.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import com.cn.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;
import com.cn.xiaonuo.flowable.modular.task.todotask.service.FlowableTodoTaskService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.flowable.task.api.TaskQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 待办任务service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:22
 */
@Service
public class FlowableTodoTaskServiceImpl implements FlowableTodoTaskService {

    @Resource
    private TaskService taskService;

    @Override
    public PageResult<FlowableTodoTaskResult> page(FlowableTodoTaskParam flowableTodoTaskParam) {
        TaskQuery taskQuery = taskService.createTaskQuery();
        Long userId = LoginContextHolder.me().getSysLoginUserId();
        List<String> loginUserRoleIds = LoginContextHolder.me().getLoginUserRoleIds();
        //查询激活的
        taskQuery.active();
        //候选人或办理人
        taskQuery.taskCandidateOrAssigned(Convert.toStr(userId));
        //候选组（角色），此处判空是为了防止用户无角色时报错（如超级管理员角色是不存在的），一般不会存在此问题
        if (ObjectUtil.isNotEmpty(loginUserRoleIds)) {
            taskQuery.taskCandidateGroupIn(loginUserRoleIds);
        }

        if (ObjectUtil.isNotNull(flowableTodoTaskParam)) {
            //流程名称模糊查询
            if (ObjectUtil.isNotEmpty(flowableTodoTaskParam.getProcessName())) {
                taskQuery.processDefinitionNameLike(SymbolConstant.PERCENT + flowableTodoTaskParam.getProcessName() + SymbolConstant.PERCENT);
            }
            //任务名称模糊查询
            if (ObjectUtil.isNotEmpty(flowableTodoTaskParam.getName())) {
                taskQuery.taskNameLike(SymbolConstant.PERCENT + flowableTodoTaskParam.getName() + SymbolConstant.PERCENT);
            }
            //流程分类查询
            if (ObjectUtil.isNotEmpty(flowableTodoTaskParam.getCategory())) {
                taskQuery.processCategoryIn(CollectionUtil.newHashSet(flowableTodoTaskParam.getCategory()));
            }
            //创建时间范围查询
            if (ObjectUtil.isAllNotEmpty(flowableTodoTaskParam.getSearchBeginTime(), flowableTodoTaskParam.getSearchEndTime())) {
                taskQuery.taskCreatedAfter(DateUtil.parseDateTime(flowableTodoTaskParam.getSearchBeginTime()))
                        .taskCreatedBefore(DateUtil.parseDateTime(flowableTodoTaskParam.getSearchEndTime()));
            }
            //优先级查询
            if (ObjectUtil.isNotEmpty(flowableTodoTaskParam.getPriority())) {
                taskQuery.taskPriority(flowableTodoTaskParam.getPriority());
            }
        }
        //根据任务创建时间倒序，最新任务在最上面
        taskQuery.orderByTaskCreateTime().desc();
        Page<FlowableTodoTaskResult> defaultPage = PageFactory.defaultPage();
        long current = defaultPage.getCurrent();
        long size = defaultPage.getSize();
        List<Task> taskList = taskQuery
                .listPage(Convert.toInt((current - 1) * size), Convert.toInt(size));
        defaultPage.setTotal(taskQuery.count());
        return FlowableTodoTaskFactory.pageResult(taskList, defaultPage);
    }
}
