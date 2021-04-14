package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.exception.enums.ServerExceptionEnum;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableDeleteSignTaskService;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableDeleteSignTaskService;
import org.flowable.common.engine.api.FlowableException;
import org.flowable.engine.RuntimeService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;

import javax.annotation.Resource;
import java.util.List;

/**
 * 任务减签service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 21:44
 */
@Service
public class FlowableDeleteSignTaskServiceImpl implements FlowableDeleteSignTaskService {

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteSign(String taskId, List<String> assigneeList, String comment) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //执行实例id
        String executionId = task.getExecutionId();
        //当前活动节点名称（任务名称）
        String currentActName = task.getName();
        //当前办理人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //减签人的姓名
        List<String> assigneeNameList = CollectionUtil.newArrayList();
        //遍历要加签的人
        assigneeList.forEach(assignee -> {
            //获取减签人名称
            String assigneeName = FlowableAssigneeFactory.getAssigneeNameByUserId(assignee);
            assigneeNameList.add(assigneeName);
        });
        //生成减签意见
        comment = BpmCommentUtil.genDeleteSignComment(name, assigneeNameList, currentActName, comment);
        //保存意见
        FlowableCommonOperator.me().addComment(taskId, comment);
        //执行减签操作并完成
        try {
            runtimeService.deleteMultiInstanceExecution(executionId, true);
        } catch (FlowableException e) {
            //抛异常减签失败
            throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_DELETE_SIGN_ERROR);
        } catch (Exception e) {
            //否则的话，可能出现服务器内部异常
            e.printStackTrace();
            throw new ServiceException(ServerExceptionEnum.SERVER_ERROR);
        }
    }
}
