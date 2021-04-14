package vip.xiaonuo.flowable.modular.button.result;

import lombok.Data;

/**
 * 活动节点按钮结果集
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:01
 */
@Data
public class FlowableButtonResult {

    /**
     * 提交（Y-是，N-否）
     */
    private String submit;

    /**
     * 保存（Y-是，N-否）
     */
    private String save;

    /**
     * 退回（Y-是，N-否）
     */
    private String back;

    /**
     * 转办（Y-是，N-否）
     */
    private String turn;

    /**
     * 指定（Y-是，N-否）
     */
    private String next;

    /**
     * 委托（Y-是，N-否）
     */
    private String entrust;

    /**
     * 终止（Y-是，N-否）
     */
    private String end;

    /**
     * 追踪（Y-是，N-否）
     */
    private String trace;

    /**
     * 挂起（Y-是，N-否）
     */
    private String suspend;

    /**
     * 跳转（Y-是，N-否）
     */
    private String jump;

    /**
     * 加签（Y-是，N-否）
     */
    private String addSign;

    /**
     * 减签（Y-是，N-否）
     */
    private String deleteSign;
}
