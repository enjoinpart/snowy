package vip.xiaonuo.flowable.modular.shortcut.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.node.FlowableShortcutTreeNode;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;

import java.util.List;

/**
 * 流程申请入口service接口
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:49
 */
public interface FlowableShortcutService extends IService<FlowableShortcut> {

    /**
     * 流程申请入口查询
     *
     * @param flowableShortcutParam 添加参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/6/30 11:23
     */
    PageResult<FlowableShortcut> page(FlowableShortcutParam flowableShortcutParam);

    /**
     * 流程申请入口列表
     *
     * @param flowableShortcutParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    List<FlowableShortcutTreeNode> list(FlowableShortcutParam flowableShortcutParam);

    /**
     * 添加流程申请入口
     *
     * @param flowableShortcutParam 添加参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void add(FlowableShortcutParam flowableShortcutParam);

    /**
     * 删除流程申请入口
     *
     * @param flowableShortcutParam 删除参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void delete(FlowableShortcutParam flowableShortcutParam);

    /**
     * 根据流程定义id删除入口
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/8/12 9:52
     **/
    void delete(String processDefinitionId);

    /**
     * 编辑流程申请入口
     *
     * @param flowableShortcutParam 编辑参数
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    void edit(FlowableShortcutParam flowableShortcutParam);

    /**
     * 查看流程申请入口
     *
     * @param flowableShortcutParam 查询参数
     * @return 申请入口
     * @author xuyuxiang
     * @date 2020/6/30 11:24
     */
    FlowableShortcut detail(FlowableShortcutParam flowableShortcutParam);

    /**
     * 根据流程定义id修改申请入口状态（字典 0正常 1停用 2删除）
     *
     * @param processDefinitionId 流程定义id
     * @param status              要修改的状态
     * @author xuyuxiang
     * @date 2020/8/12 9:48
     **/
    void changeStatus(String processDefinitionId, Integer status);
}
