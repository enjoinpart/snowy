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
package vip.xiaonuo.flowable.modular.task.instancetask.service.impl;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.consts.SymbolConstant;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.task.instancetask.factory.FlowableInstanceTaskFactory;
import vip.xiaonuo.flowable.modular.task.instancetask.param.FlowableInstanceTaskParam;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import vip.xiaonuo.flowable.modular.task.instancetask.service.FlowableInstanceTaskService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.flowable.engine.HistoryService;
import org.flowable.task.api.history.HistoricTaskInstance;
import org.flowable.task.api.history.HistoricTaskInstanceQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 实例任务Service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:19
 */
@Service
public class FlowableInstanceTaskServiceImpl implements FlowableInstanceTaskService {

    @Resource
    private HistoryService historyService;

    @Override
    public PageResult<FlowableInstanceTaskResult> page(FlowableInstanceTaskParam flowableInstanceTaskParam) {
        HistoricTaskInstanceQuery historicTaskInstanceQuery = historyService.createHistoricTaskInstanceQuery();
        if (ObjectUtil.isNotNull(flowableInstanceTaskParam)) {
            if (ObjectUtil.isNotEmpty(flowableInstanceTaskParam.getProcessInstanceId())) {
                //根据实例查询
                historicTaskInstanceQuery.processInstanceId(flowableInstanceTaskParam.getProcessInstanceId());
            }

            if (ObjectUtil.isNotEmpty(flowableInstanceTaskParam.getName())) {
                //根据任务名称模糊查询
                historicTaskInstanceQuery.taskNameLike(SymbolConstant.PERCENT + flowableInstanceTaskParam.getName() + SymbolConstant.PERCENT);
            }

            if (ObjectUtil.isNotEmpty(flowableInstanceTaskParam.getFinished())) {
                //根据是否结束查询
                if (flowableInstanceTaskParam.getFinished()) {
                    historicTaskInstanceQuery.finished();
                } else {
                    historicTaskInstanceQuery.unfinished();
                }
            }
        }
        //根据任务创建时间倒序，最新创建的任务在最上面
        historicTaskInstanceQuery.orderByHistoricTaskInstanceStartTime().desc();
        Page<FlowableInstanceTaskResult> defaultPage = PageFactory.defaultPage();
        long current = defaultPage.getCurrent();
        long size = defaultPage.getSize();
        List<HistoricTaskInstance> taskList = historicTaskInstanceQuery
                .listPage(Convert.toInt((current - 1) * size), Convert.toInt(size));
        defaultPage.setTotal(historicTaskInstanceQuery.count());
        return FlowableInstanceTaskFactory.pageResult(taskList, defaultPage);
    }
}
