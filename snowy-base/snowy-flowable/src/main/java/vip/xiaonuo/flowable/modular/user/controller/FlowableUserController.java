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
package vip.xiaonuo.flowable.modular.user.controller;

import cn.hutool.core.lang.Dict;
import vip.xiaonuo.core.context.system.SystemContextHolder;
import vip.xiaonuo.core.pojo.login.SysLoginUser;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.user.result.FlowableUserResult;
import org.flowable.ui.common.model.RemoteUser;
import org.flowable.ui.common.model.ResultListDataRepresentation;
import org.flowable.ui.common.security.SecurityUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.pojo.login.SysLoginUser;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

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
