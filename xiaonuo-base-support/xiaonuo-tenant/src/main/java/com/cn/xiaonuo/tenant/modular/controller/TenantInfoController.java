package com.cn.xiaonuo.tenant.modular.controller;

import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.tenant.entity.TenantInfo;
import com.cn.xiaonuo.core.tenant.params.TenantInfoParam;
import com.cn.xiaonuo.core.tenant.service.TenantInfoService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


/**
 * 租户表控制器
 *
 * @author yubaoshan
 * @date 2019-06-16 20:57:22
 */
@RestController
public class TenantInfoController {

    @Resource
    private TenantInfoService tenantInfoService;

    /**
     * 查询列表
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @RequestMapping("/tenantInfo/page")
    public ResponseData page(TenantInfoParam tenantInfoParam) {
        return ResponseData.success(this.tenantInfoService.page(tenantInfoParam));
    }

    /**
     * 新增接口
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @PostMapping("/tenantInfo/add")
    public ResponseData add(@RequestBody @Validated(TenantInfoParam.add.class) TenantInfoParam tenantInfoParam) {
        this.tenantInfoService.add(tenantInfoParam);
        return ResponseData.success();
    }

    /**
     * 编辑接口
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @PostMapping("/tenantInfo/edit")
    public ResponseData edit(@RequestBody @Validated(TenantInfoParam.edit.class) TenantInfoParam tenantInfoParam) {
        this.tenantInfoService.update(tenantInfoParam);
        return ResponseData.success();
    }

    /**
     * 删除接口
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @PostMapping("/tenantInfo/delete")
    public ResponseData delete(@RequestBody @Validated(TenantInfoParam.delete.class) TenantInfoParam tenantInfoParam) {
        this.tenantInfoService.delete(tenantInfoParam);
        return ResponseData.success();
    }

    /**
     * 查看详情接口
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @GetMapping("/tenantInfo/detail")
    public ResponseData detail(@Validated(TenantInfoParam.detail.class) TenantInfoParam tenantInfoParam) {
        TenantInfo detail = this.tenantInfoService.getById(tenantInfoParam.getId());
        return ResponseData.success(detail);
    }

    /**
     * 获取租户列表
     *
     * @author yubaoshan
     * @date 2019-06-16
     */
    @GetMapping("/tenantInfo/listTenants")
    public ResponseData listTenants() {
        LambdaQueryWrapper<TenantInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.select(TenantInfo::getName, TenantInfo::getCode);

        List<TenantInfo> list = this.tenantInfoService.list(queryWrapper);
        return ResponseData.success(list);
    }

}


