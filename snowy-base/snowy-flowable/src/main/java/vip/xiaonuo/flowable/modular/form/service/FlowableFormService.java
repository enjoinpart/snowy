package vip.xiaonuo.flowable.modular.form.service;

import vip.xiaonuo.flowable.modular.form.entity.FlowableForm;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.result.FlowableFormResult;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 流程表单service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:25
 */
public interface FlowableFormService extends IService<FlowableForm> {


    /**
     * 流程表单列表
     *
     * @param flowableFormParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    List<FlowableFormResult> list(FlowableFormParam flowableFormParam);

    /**
     * 添加流程表单
     *
     * @param flowableFormParam 添加参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void add(FlowableFormParam flowableFormParam);

    /**
     * 删除流程表单
     *
     * @param flowableFormParam 删除参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void delete(FlowableFormParam flowableFormParam);

    /**
     * 编辑表单
     *
     * @param flowableFormParam 编辑参数
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    void edit(FlowableFormParam flowableFormParam);

    /**
     * 查看表单
     *
     * @param flowableFormParam 查看参数
     * @return 表单结果
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    FlowableForm detail(FlowableFormParam flowableFormParam);

    /**
     * 根据流程定义id删除表单配置
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/8/14 16:08
     **/
    void delete(String processDefinitionId);

    /**
     * 获取启动表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getStartFormData(FlowableFormParam flowableFormParam);

    /**
     * 获取启动表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getGlobalFormData(FlowableFormParam flowableFormParam);

    /**
     * 获取任务表单数据
     *
     * @param flowableFormParam 查询参数
     * @return 表单Json数据
     * @author xuyuxiang
     * @date 2020/7/30 16:49
     **/
    String getTaskFormData(FlowableFormParam flowableFormParam);

    /**
     * 根据表单id判断该表单是否关联流程定义
     *
     * @param formResourceId 表单id
     * @return 是否关联流程定义 true-是，false-否
     * @author xuyuxiang
     * @date 2020/8/16 15:12
     */
    boolean hasDefinition(Long formResourceId);
}
