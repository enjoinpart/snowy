package vip.xiaonuo.flowable.modular.option.service;

import vip.xiaonuo.flowable.modular.option.entity.FlowableOption;
import vip.xiaonuo.flowable.modular.option.param.FlowableOptionParam;
import com.baomidou.mybatisplus.extension.service.IService;
import org.flowable.engine.repository.ProcessDefinition;

import java.util.List;

/**
 * 流程选项service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 16:39
 */
public interface FlowableOptionService extends IService<FlowableOption> {

    /**
     * 根据流程定义，添加流程选项
     *
     * @param processDefinition 流程定义
     * @author xuyuxiang
     * @date 2020/4/17 16:40
     */
    void addByProcessDefinition(ProcessDefinition processDefinition);

    /**
     * 删除流程选项
     *
     * @param flowableOptionParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 16:40
     */
    void delete(FlowableOptionParam flowableOptionParam);

    /**
     * 编辑流程选项
     *
     * @param flowableOptionParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 16:40
     */
    void edit(FlowableOptionParam flowableOptionParam);

    /**
     * 查看流程选项
     *
     * @param flowableOptionParam 查看参数
     * @return 流程选项
     * @author xuyuxiang
     * @date 2020/4/17 16:40
     */
    FlowableOption detail(FlowableOptionParam flowableOptionParam);

    /**
     * 流程选项列表
     *
     * @param flowableOptionParam 查询参数
     * @return 选项列表
     * @author xuyuxiang
     * @date 2020/4/17 16:40
     */
    List<FlowableOption> list(FlowableOptionParam flowableOptionParam);

    /**
     * 根据流程定义id删除流程选项
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/4/24 15:33
     */
    void delete(String processDefinitionId);

    /**
     * 根据流程定义id获取标题
     *
     * @param processDefinitionId 流程定义id
     * @return 标题
     * @author xuyuxiang
     * @date 2020/4/24 15:47
     */
    String getTitleByProcessDefinitionId(String processDefinitionId);

    /**
     * 根据流程定义id获取是否自动完成第一个任务
     *
     * @param processDefinitionId 流程定义id
     * @return 是否自动完成第一个任务，true是，false否
     * @author xuyuxiang
     * @date 2020/4/29 15:13
     */
    boolean getFlowableOptionJumpFirst(String processDefinitionId);

    /**
     * 根据流程定义id获取是否跳过相同处理人
     *
     * @param processDefinitionId 流程定义id
     * @return 是否跳过相同处理人，true是，false否
     * @author xuyuxiang
     * @date 2020/4/29 15:13
     */
    boolean getFlowableOptionSmartComplete(String processDefinitionId);
}
