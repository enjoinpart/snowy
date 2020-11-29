package com.cn.xiaonuo.flowable.modular.shortcut.node;

import com.cn.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import lombok.Data;

import java.util.List;

/**
 * 流程申请入口树节点
 *
 * @author xuyuxiang
 * @date 2020/6/30 14:08
 */
@Data
public class FlowableShortcutTreeNode {

    /**
     * 分类名称
     */
    private String categoryName;

    /**
     * 子节点
     */
    List<FlowableShortcut> childrenList;
}
