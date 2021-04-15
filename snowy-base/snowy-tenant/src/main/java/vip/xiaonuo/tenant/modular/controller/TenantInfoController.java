/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.tenant.modular.controller;

import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.tenant.entity.TenantInfo;
import vip.xiaonuo.core.tenant.params.TenantInfoParam;
import vip.xiaonuo.core.tenant.service.TenantInfoService;
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


