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
package vip.xiaonuo.flowable.modular.task.handletask.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.core.context.system.SystemContextHolder;
import org.flowable.engine.HistoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.identitylink.api.IdentityLink;
import org.flowable.identitylink.api.history.HistoricIdentityLink;
import org.flowable.task.api.Task;

import java.util.List;
import java.util.Set;

/**
 * 流程任务处理人工厂类，用于生成处理人信息
 *
 * @author xuyuxiang
 * @date 2020/5/22 10:46
 */
public class FlowableAssigneeFactory {

    private static final TaskService taskService = SpringUtil.getBean(TaskService.class);

    private static final HistoryService historyService = SpringUtil.getBean(HistoryService.class);

    private static final RuntimeService runtimeService = SpringUtil.getBean(RuntimeService.class);

    /**
     * 根据处理人id获取处理人名称
     *
     * @author xuyuxiang
     * @date 2020/5/22 10:47
     */
    public static String getAssigneeNameByUserId(String assignee) {
        return SystemContextHolder.me().getNameByUserId(Convert.toLong(assignee));
    }

    /**
     * 根据处理角色id获取处理角色名称
     *
     * @author xuyuxiang
     * @date 2020/5/22 15:50
     */
    private static String getGroupNameByGroupId(String groupId) {
        return SystemContextHolder.me().getNameByRoleId(Convert.toLong(groupId));
    }

    /**
     * 根据处理人id获取处理人信息
     *
     * @author xuyuxiang
     * @date 2020/5/22 10:49
     */
    public static String getAssigneeInfoByUserId(String assignee) {
        return "处理人：" + getAssigneeNameByUserId(assignee);
    }

    /**
     * 根据任务id获取候选人、候选组名称
     *
     * @author xuyuxiang
     * @date 2020/5/22 15:36
     */
    public static String getAssigneeNameByTaskId(String taskId) {
        Set<String> groupNameSet = CollectionUtil.newHashSet();
        Set<String> userNameSet = CollectionUtil.newHashSet();
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
        //如果任务处于运行中
        if (ObjectUtil.isNotNull(task)) {
            List<IdentityLink> identityLinksForTask = taskService.getIdentityLinksForTask(taskId);
            identityLinksForTask.forEach(identityLink -> {
                String groupId = identityLink.getGroupId();
                String userId = identityLink.getUserId();
                if (ObjectUtil.isNotEmpty(groupId)) {
                    String groupName = getGroupNameByGroupId(groupId);
                    groupNameSet.add(groupName);
                }
                if (ObjectUtil.isNotEmpty(userId)) {
                    String userName = getAssigneeNameByUserId(userId);
                    userNameSet.add(userName);
                }
            });

        } else {
            List<HistoricIdentityLink> historicIdentityLinksForTask = historyService.getHistoricIdentityLinksForTask(taskId);
            historicIdentityLinksForTask.forEach(identityLink -> {
                String groupId = identityLink.getGroupId();
                String userId = identityLink.getUserId();
                if (ObjectUtil.isNotEmpty(groupId)) {
                    String groupName = getGroupNameByGroupId(groupId);
                    groupNameSet.add(groupName);
                }
                if (ObjectUtil.isNotEmpty(userId)) {
                    String userName = getAssigneeNameByUserId(userId);
                    userNameSet.add(userName);
                }
            });
        }

        groupNameSet.addAll(userNameSet);
        if (ObjectUtil.isNotEmpty(groupNameSet)) {
            return Convert.toStr(groupNameSet);
        }
        return null;
    }

    /**
     * 根据任务id获取候选人、候选组信息
     *
     * @author xuyuxiang
     * @date 2020/5/22 15:36
     */
    public static String getAssigneeInfoByTaskId(String taskId) {
        String assigneeNameStr = getAssigneeNameByTaskId(taskId);
        if (ObjectUtil.isNotEmpty(assigneeNameStr)) {
            return "候选操作人：" + assigneeNameStr;
        }
        return "无";
    }

    /**
     * 根据办理人或角色id判断是否是用户
     *
     * @author xuyuxiang
     * @date 2020/8/4 20:55
     */
    public static boolean isUser(String assignee) {
        return SystemContextHolder.me().isUser(Convert.toLong(assignee));
    }

    /**
     * 根据办理人或角色id判断是否是角色
     *
     * @author xuyuxiang
     * @date 2020/8/4 20:55
     */
    public static boolean isRole(String assignee) {
        return SystemContextHolder.me().isRole(Convert.toLong(assignee));
    }
}
