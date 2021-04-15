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
package vip.xiaonuo.flowable.modular.task.todotask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.consts.SymbolConstant;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.task.todotask.factory.FlowableTodoTaskFactory;
import vip.xiaonuo.flowable.modular.task.todotask.param.FlowableTodoTaskParam;
import vip.xiaonuo.flowable.modular.task.todotask.result.FlowableTodoTaskResult;
import vip.xiaonuo.flowable.modular.task.todotask.service.FlowableTodoTaskService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
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
