package vip.xiaonuo.flowable.modular.button.service;

import vip.xiaonuo.flowable.modular.button.entity.FlowableButton;
import vip.xiaonuo.flowable.modular.button.param.FlowableButtonParam;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;

import java.util.List;

/**
 * 活动节点按钮service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:00
 */
public interface FlowableButtonService extends IService<FlowableButton> {

    /**
     * 添加活动节点按钮
     *
     * @param flowableButtonParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/17 16:07
     */
    void add(FlowableButtonParam flowableButtonParam);

    /**
     * 删除活动节点按钮
     *
     * @param flowableButtonParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void delete(FlowableButtonParam flowableButtonParam);

    /**
     * 编辑活动节点按钮
     *
     * @param flowableButtonParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void edit(FlowableButtonParam flowableButtonParam);

    /**
     * 查看活动节点按钮
     *
     * @param flowableButtonParam 查看参数
     * @return 按钮结果
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    FlowableButton detail(FlowableButtonParam flowableButtonParam);

    /**
     * 根据流程定义查询活动节点按钮列表
     *
     * @param flowableButtonParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    List<FlowableButton> list(FlowableButtonParam flowableButtonParam);

    /**
     * 根据流程定义id删除流程按钮
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/4/24 15:34
     */
    void delete(String processDefinitionId);

    /**
     * 根据活动节点id查看活动节点按钮
     *
     * @param flowableButtonParam 查询参数
     * @return 按钮结果
     * @author xuyuxiang
     * @date 2020/6/8 11:53
     */
    FlowableButtonResult trace(FlowableButtonParam flowableButtonParam);
}
