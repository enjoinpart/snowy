package vip.xiaonuo.flowable.modular.model.service;

import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import vip.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 流程模型service接口
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:12
 */
public interface FlowableModelService {

    /**
     * 流程模型列表
     *
     * @param flowableModelParam 流程模型参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/8/15 23:15
     */
    List<FlowableModelResult> list(FlowableModelParam flowableModelParam);

    /**
     * 流程模型添加
     *
     * @param flowableModelParam 添加参数
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    String add(FlowableModelParam flowableModelParam);

    /**
     * 流程模型删除
     *
     * @param flowableModelParam 删除参数
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    void delete(FlowableModelParam flowableModelParam);

    /**
     * 流程模型编辑
     *
     * @param flowableModelParam 编辑参数
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/15 23:16
     */
    String edit(FlowableModelParam flowableModelParam);

    /**
     * 流程模型预览
     *
     * @param flowableModelParam 预览参数
     * @return 模型xml
     * @author xuyuxiang
     * @date 2020/8/15 23:17
     */
    String preview(FlowableModelParam flowableModelParam);

    /**
     * 流程模型版本列表
     *
     * @param flowableModelParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/8/16 1:51
     */
    List<FlowableModelResult> version(FlowableModelParam flowableModelParam);

    /**
     * 流程模型设为新版
     *
     * @param flowableModelParam 参数
     * @author xuyuxiang
     * @date 2020/8/16 2:06
     */
    void setAsNew(FlowableModelParam flowableModelParam);

    /**
     * 流程模型导入
     *
     * @param file 导入的文件
     * @return 模型id
     * @author xuyuxiang
     * @date 2020/8/16 15:48
     */
    String importModel(MultipartFile file);
}
