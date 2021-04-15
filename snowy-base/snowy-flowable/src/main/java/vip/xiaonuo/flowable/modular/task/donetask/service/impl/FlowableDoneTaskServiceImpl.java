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
package vip.xiaonuo.flowable.modular.task.donetask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.consts.SymbolConstant;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.task.donetask.factory.FlowableDoneTaskFactory;
import vip.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import vip.xiaonuo.flowable.modular.task.donetask.result.FlowableDoneTaskResult;
import vip.xiaonuo.flowable.modular.task.donetask.service.FlowableDoneTaskService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.flowable.engine.HistoryService;
import org.flowable.task.api.history.HistoricTaskInstance;
import org.flowable.task.api.history.HistoricTaskInstanceQuery;
import org.springframework.stereotype.Service;
import vip.xiaonuo.core.consts.SymbolConstant;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;

import javax.annotation.Resource;
import java.util.List;

/**
 * 已办任务service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:22
 */
@Service
public class FlowableDoneTaskServiceImpl implements FlowableDoneTaskService {

    @Resource
    private HistoryService historyService;

    @Override
    public PageResult<FlowableDoneTaskResult> page(FlowableDoneTaskParam flowableDoneTaskParam) {
        HistoricTaskInstanceQuery historicTaskInstanceQuery = historyService.createHistoricTaskInstanceQuery();
        Long userId = LoginContextHolder.me().getSysLoginUserId();
        historicTaskInstanceQuery.taskAssignee(Convert.toStr(userId));
        historicTaskInstanceQuery.finished();
        //根据任务办理时间倒序，最新办完的在最上面
        historicTaskInstanceQuery.orderByHistoricTaskInstanceEndTime().desc();

        if (ObjectUtil.isNotNull(flowableDoneTaskParam)) {
            //流程名称模糊查询
            if (ObjectUtil.isNotEmpty(flowableDoneTaskParam.getProcessName())) {
                historicTaskInstanceQuery.processDefinitionNameLike(SymbolConstant.PERCENT + flowableDoneTaskParam.getProcessName() + SymbolConstant.PERCENT);
            }
            //任务名称模糊查询
            if (ObjectUtil.isNotEmpty(flowableDoneTaskParam.getName())) {
                historicTaskInstanceQuery.taskNameLike(SymbolConstant.PERCENT + flowableDoneTaskParam.getName() + SymbolConstant.PERCENT);
            }
            //流程分类查询
            if (ObjectUtil.isNotEmpty(flowableDoneTaskParam.getCategory())) {
                historicTaskInstanceQuery.processCategoryIn(CollectionUtil.newHashSet(flowableDoneTaskParam.getCategory()));
            }
            //创建时间范围查询
            if (ObjectUtil.isAllNotEmpty(flowableDoneTaskParam.getSearchBeginTime(), flowableDoneTaskParam.getSearchEndTime())) {
                historicTaskInstanceQuery.taskCreatedAfter(DateUtil.parseDateTime(flowableDoneTaskParam.getSearchBeginTime()))
                        .taskCreatedBefore(DateUtil.parseDateTime(flowableDoneTaskParam.getSearchEndTime()));
            }
            //优先级查询
            if (ObjectUtil.isNotEmpty(flowableDoneTaskParam.getPriority())) {
                historicTaskInstanceQuery.taskPriority(flowableDoneTaskParam.getPriority());
            }
        }

        Page<FlowableDoneTaskResult> defaultPage = PageFactory.defaultPage();
        long current = defaultPage.getCurrent();
        long size = defaultPage.getSize();
        List<HistoricTaskInstance> taskList = historicTaskInstanceQuery
                .listPage(Convert.toInt((current - 1) * size), Convert.toInt(size));
        defaultPage.setTotal(historicTaskInstanceQuery.count());
        return FlowableDoneTaskFactory.pageResult(taskList, defaultPage);
    }
}
