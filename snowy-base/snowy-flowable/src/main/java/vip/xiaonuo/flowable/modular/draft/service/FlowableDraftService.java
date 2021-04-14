package vip.xiaonuo.flowable.modular.draft.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.draft.entity.FlowableDraft;
import vip.xiaonuo.flowable.modular.draft.param.FlowableDraftParam;
import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;

/**
 * 申请草稿service接口
 *
 * @author xuyuxiang
 * @date 2020/9/9 14:59
 **/
public interface FlowableDraftService extends IService<FlowableDraft> {

    /**
     * 查询申请草稿
     *
     * @param flowableDraftParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    PageResult<FlowableDraft> page(FlowableDraftParam flowableDraftParam);

    /**
     * 添加/编辑申请草稿
     *
     * @param flowableDraftParam 添加或编辑参数
     * @return void
     * @author xuyuxiang
     * @date 2020/9/9 15:11
     **/
    void addOrUpdate(FlowableDraftParam flowableDraftParam);

    /**
     * 删除申请草稿
     *
     * @param flowableDraftParam 删除参数
     * @return void
     * @author xuyuxiang
     * @date 2020/9/9 15:18
     **/
    void delete(FlowableDraftParam flowableDraftParam);
}
