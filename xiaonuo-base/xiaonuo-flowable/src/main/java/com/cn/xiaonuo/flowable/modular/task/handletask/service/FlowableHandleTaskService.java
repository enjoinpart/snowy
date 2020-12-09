package com.cn.xiaonuo.flowable.modular.task.handletask.service;

import com.cn.xiaonuo.flowable.modular.task.handletask.param.FlowableHandleTaskParam;

import java.util.Map;

/**
 * 任务办理service接口
 *
 * @author xuyuxiang
 * @date 2020/8/4 22:16
 */
public interface FlowableHandleTaskService {

    /**
     * 启动
     *
     * @param flowableHandleTaskParam 启动参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void start(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 提交
     *
     * @param flowableHandleTaskParam 提交参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void submit(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 保存
     *
     * @param flowableHandleTaskParam 保存参数
     * @author xuyuxiang
     * @date 2020/8/5 15:19
     **/
    void save(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 退回
     *
     * @param flowableHandleTaskParam 退回参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void back(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 转办
     *
     * @param flowableHandleTaskParam 转办参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void turn(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 委托
     *
     * @param flowableHandleTaskParam 委托参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void entrust(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 跳转
     *
     * @param flowableHandleTaskParam 跳转参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void jump(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 终止
     *
     * @param flowableHandleTaskParam 终止参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void end(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 挂起
     *
     * @param flowableHandleTaskParam 挂起参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void suspend(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 加签
     *
     * @param flowableHandleTaskParam 加签参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void addSign(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 减签
     *
     * @param flowableHandleTaskParam 减签参数
     * @author xuyuxiang
     * @date 2020/8/4 22:20
     */
    void deleteSign(FlowableHandleTaskParam flowableHandleTaskParam);

    /**
     * 获取任务数据
     *
     * @param flowableHandleTaskParam 获取参数
     * @return 任务数据
     * @author xuyuxiang
     * @date 2020/8/16 17:54
     */
    Map<String, Object> taskData(FlowableHandleTaskParam flowableHandleTaskParam);
}
