package com.cn.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 审批意见相关状态，用于同意，退回，委托等操作时存审批意见时的操作类型
 *
 * @author xuyuxiang
 * @date 2020/4/29 15:24
 */
@Getter
public enum CommentStatusEnum {

    /**
     * 同意
     */
    AGREE("agree", "同意"),

    /**
     * 退回
     */
    BACK("back", "退回"),

    /**
     * 委托
     */
    ENTRUST("entrust", "委托"),

    /**
     * 终止
     */
    END("end", "终止");

    private final String code;

    private final String message;

    CommentStatusEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
