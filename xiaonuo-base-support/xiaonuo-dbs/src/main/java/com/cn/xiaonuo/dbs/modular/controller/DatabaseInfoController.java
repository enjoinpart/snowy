package com.cn.xiaonuo.dbs.modular.controller;

import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.dbs.modular.param.DatabaseInfoParam;
import com.cn.xiaonuo.dbs.modular.service.DatabaseInfoService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


/**
 * 数据库信息表控制器
 *
 * @author yubaoshan
 * @date 2019-06-15 17:05:23
 */
@RestController
public class DatabaseInfoController {

    @Resource
    private DatabaseInfoService databaseInfoService;

    /**
     * 查询列表
     *
     * @author yubaoshan
     * @date 2019-06-15
     */
    @GetMapping("/databaseInfo/page")
    public ResponseData page(DatabaseInfoParam databaseInfoParam) {
        return ResponseData.success(databaseInfoService.page(databaseInfoParam));
    }

    /**
     * 新增接口
     *
     * @author yubaoshan
     * @date 2019-06-15
     */
    @PostMapping("/databaseInfo/add")
    public ResponseData add(@RequestBody @Validated(DatabaseInfoParam.add.class) DatabaseInfoParam databaseInfoParam) {
        databaseInfoService.add(databaseInfoParam);
        return ResponseData.success();
    }

    /**
     * 编辑接口
     *
     * @author yubaoshan
     * @date 2019-06-15
     */
    @PostMapping("/databaseInfo/edit")
    public ResponseData edit(@RequestBody @Validated(DatabaseInfoParam.edit.class) DatabaseInfoParam databaseInfoParam) {
        databaseInfoService.edit(databaseInfoParam);
        return ResponseData.success();
    }

    /**
     * 删除接口
     *
     * @author yubaoshan
     * @date 2019-06-15
     */
    @PostMapping("/databaseInfo/delete")
    public ResponseData delete(@RequestBody @Validated(DatabaseInfoParam.delete.class) DatabaseInfoParam databaseInfoParam) {
        databaseInfoService.delete(databaseInfoParam);
        return ResponseData.success();
    }

}


