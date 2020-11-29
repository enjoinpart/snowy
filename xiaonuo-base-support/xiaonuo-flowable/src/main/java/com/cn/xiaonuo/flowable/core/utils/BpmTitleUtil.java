package com.cn.xiaonuo.flowable.core.utils;

import cn.hutool.core.date.DateUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.core.pojo.login.SysLoginUser;

/**
 * 流程标题工具类
 *
 * @author xuyuxiang
 * @date 2020/5/26 16:46
 */
public class BpmTitleUtil {

    /**
     * 处理流程标题规则
     *
     * @author xuyuxiang
     * @date 2020/5/26 16:55
     */
    public static String formatTitle(String titleReg, String processTitle) {
        SysLoginUser sysLoginUser = LoginContextHolder.me().getSysLoginUser();
        return titleReg.replace("user", sysLoginUser.getName()).replace("time", DateUtil.now()).replace("title", processTitle);
    }
}
