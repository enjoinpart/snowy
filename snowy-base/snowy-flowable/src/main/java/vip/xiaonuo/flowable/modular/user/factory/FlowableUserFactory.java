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
