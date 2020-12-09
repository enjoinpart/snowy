package com.cn.xiaonuo.flowable.modular.user.controller;

import cn.hutool.core.lang.Dict;
import com.cn.xiaonuo.core.context.system.SystemContextHolder;
import com.cn.xiaonuo.core.pojo.login.SysLoginUser;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.user.result.FlowableUserResult;
import org.flowable.ui.common.model.RemoteUser;
import org.flowable.ui.common.model.ResultListDataRepresentation;
import org.flowable.ui.common.security.SecurityUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * flowable账户控制器，用于进入设计器时获取用户信息
 * flowable用户控制器，用于流程设计时选人，选角色
 * </p>
 *
 * @author xuyuxiang
 * @date 2020/4/14 9:04
 */
@RestController
public class FlowableUserController {

    /**
     * 流程设计器获取账户信息
     *
     * @author xuyuxiang
     * @date 2020/4/14 9:10
     */
    @GetMapping("/app/rest/account")
    public ResponseData getAccount(String token) {
        SysLoginUser sysLoginUser = SystemContextHolder.me().getLoginUserByToken(token);
        RemoteUser remoteUser = new RemoteUser();
        remoteUser.setFirstName(sysLoginUser.getName());
        remoteUser.setId(sysLoginUser.getUsername());
        //构建flowable用户结果集
        FlowableUserResult flowableUserResult = new FlowableUserResult(remoteUser);
        //保证创建流程可用，在保存model等情况
        SecurityUtils.assumeUser(remoteUser);
        return new SuccessResponseData(flowableUserResult);
    }

    /**
     * 流程设计器获取用户列表
     *
     * @author xuyuxiang
     * @date 2020/4/14 9:13
     */
    @GetMapping({"/app/rest/editor-users"})
    public ResultListDataRepresentation getUsers(@RequestParam(value = "filter", required = false) String filter) {
        List<Dict> list = SystemContextHolder.me().listUser(filter);
        return new ResultListDataRepresentation(list);
    }

    /**
     * 流程设计器获取用户组（角色）列表
     *
     * @author xuyuxiang
     * @date 2020/4/14 9:13
     */
    @GetMapping({"/app/rest/editor-groups"})
    public ResultListDataRepresentation getGroups(@RequestParam(value = "filter", required = false) String filter) {
        List<Dict> list = SystemContextHolder.me().listRole(filter);
        return new ResultListDataRepresentation(list);
    }
}
