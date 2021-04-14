package vip.xiaonuo.flowable.modular.model.result;

import lombok.Data;

import java.util.Date;

/**
 * 流程模型结果
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:12
 */
@Data
public class FlowableModelResult {

    /**
     * id
     */
    private String id;

    /**
     * 模型id
     */
    private String modelId;

    /**
     * 编码
     */
    private String key;

    /**
     * 名称
     */
    private String name;

    /**
     * 描述
     */
    private String description;

    /**
     * 创建时间
     */
    private Date created;

    /**
     * 创建人
     */
    private String createdBy;

    /**
     * 修改时间
     */
    protected Date lastUpdated;

    /**
     * 修改人
     */
    private String lastUpdatedBy;

    /**
     * 版本
     */
    private int version;
}
