package com.cn.xiaonuo.flowable.core.utils;

import cn.hutool.core.convert.Convert;

import java.util.List;

/**
 * 流程意见相关工具类
 *
 * @author xuyuxiang
 * @date 2020/5/6 15:06
 */
public class BpmCommentUtil {

    /**
     * 生成解决委托任务的意见
     *
     * @author xuyuxiang
     * @date 2020/5/20 16:46
     */
    public static String genResolveComment(String name) {
        return name + "解决了委托任务" + ";";
    }

    /**
     * 生成签收组任务的意见
     *
     * @author xuyuxiang
     * @date 2020/5/20 16:51
     */
    public static String genClaimComment(String name) {
        return name + "签收了任务" + ";";
    }

    /**
     * 生成提交的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:10
     */
    public static String genSubmitComment(String name, String comment) {
        return name + "提交了任务" + "，意见：" + comment + ";";
    }

    /**
     * 生成自动完成的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:11
     */
    public static String genSmartCompleteComment() {
        return "与上一步处理人相同，系统自动完成" + ";";
    }

    /**
     * 生成退回的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:11
     */
    public static String genBackComment(String name, String targetActName, String comment) {
        return name + "退回任务到【" + targetActName + "】，退回原因：" + comment + ";";
    }

    /**
     * 生成委托的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:16
     */
    public static String genEntrustComment(String name, String assigneeName, String comment) {
        return name + "将任务委托给了【" + assigneeName + "】，委托原因：" + comment + ";";
    }

    /**
     * 生成终止的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:16
     */
    public static String genEndComment(String name, String comment) {
        return name + "终止了任务，终止原因：" + comment + ";";
    }

    /**
     * 生成跳转的意见
     *
     * @author xuyuxiang
     * @date 2020/5/6 15:16
     */
    public static String genJumpComment(String name, String targetActName, String comment) {
        return name + "将任务跳转到【" + targetActName + "】，跳转原因：" + comment + ";";
    }

    /**
     * 生成加签的意见
     *
     * @author xuyuxiang
     * @date 2020/6/1 12:14
     */
    public static String genAddSignComment(String name, List<String> assigneeNameList, String actName, String comment) {
        return name + "在【" + actName + "】节点执行了加签操作，加签的人：" + Convert.toStr(assigneeNameList) + "，加签原因：" + comment + ";";
    }

    /**
     * 生成减签的意见
     *
     * @author xuyuxiang
     * @date 2020/6/1 12:14
     */
    public static String genDeleteSignComment(String name, List<String> assigneeNameList, String actName, String comment) {
        return name + "在【" + actName + "】节点执行了减签操作，减签的人：" + Convert.toStr(assigneeNameList) + "，减签原因：" + comment + ";";
    }
}
