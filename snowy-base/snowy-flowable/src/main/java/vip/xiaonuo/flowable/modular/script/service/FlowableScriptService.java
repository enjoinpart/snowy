package vip.xiaonuo.flowable.modular.script.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.script.entity.FlowableScript;
import vip.xiaonuo.flowable.modular.script.param.FlowableScriptParam;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.util.List;

/**
 * 流程脚本service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:58
 */
public interface FlowableScriptService extends IService<FlowableScript> {

    /**
     * 查询流程脚本
     *
     * @param flowableScriptParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/17 17:14
     */
    PageResult<FlowableScript> page(FlowableScriptParam flowableScriptParam);

    /**
     * 流程脚本列表
     *
     * @param flowableScriptParam 查询参数
     * @return 脚本列表
     * @author xuyuxiang
     * @date 2020/8/13 17:36
     **/
    List<FlowableScript> list(FlowableScriptParam flowableScriptParam);

    /**
     * 添加流程脚本
     *
     * @param flowableScriptParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/17 17:14
     */
    void add(FlowableScriptParam flowableScriptParam);

    /**
     * 删除流程脚本
     *
     * @param flowableScriptParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    void delete(FlowableScriptParam flowableScriptParam);

    /**
     * 编辑流程脚本
     *
     * @param flowableScriptParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    void edit(FlowableScriptParam flowableScriptParam);

    /**
     * 查看流程脚本
     *
     * @param flowableScriptParam 查看参数
     * @return 流程脚本
     * @author xuyuxiang
     * @date 2020/4/17 17:15
     */
    FlowableScript detail(FlowableScriptParam flowableScriptParam);
}
