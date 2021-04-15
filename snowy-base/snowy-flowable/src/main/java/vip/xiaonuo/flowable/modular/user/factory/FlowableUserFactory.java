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
package vip.xiaonuo.flowable.modular.user.factory;

import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.pojo.login.SysLoginUser;
import org.flowable.idm.api.User;
import org.flowable.ui.common.model.RemoteUser;
import org.flowable.ui.common.security.SecurityUtils;
import vip.xiaonuo.core.pojo.login.SysLoginUser;

/**
 * flowable用户工厂类
 *
 * @author xuyuxiang
 * @date 2020/8/7 22:13
 */
public class FlowableUserFactory {

    /**
     * 给flowable的idm设置当前用户
     *
     * @author xuyuxiang
     * @date 2020/8/7 22:15
     */
    public static void assumeUser() {
        //如果flowable的idm中当前用户为空，则给其设置当前用户
        User currentUserObject = SecurityUtils.getCurrentUserObject();
        if (ObjectUtil.isNull(currentUserObject)) {
            SysLoginUser sysLoginUser = LoginContextHolder.me().getSysLoginUser();
            RemoteUser remoteUser = new RemoteUser();
            remoteUser.setFirstName(sysLoginUser.getName());
            remoteUser.setId(sysLoginUser.getUsername());
            //构建flowable用户结果集
            //保证创建流程可用，在保存model等情况
            SecurityUtils.assumeUser(remoteUser);
        }
    }
}
