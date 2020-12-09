package com.cn.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 流程实体状态
 *
 * @author xuyuxiang
 * @date 2020/4/20 15:37
 */
@Getter
public enum ProcessEntityStatusEnum {

    /**
     * 草稿
     */
    DRAFT(0, "草稿"),

    /**
     * 审核中
     */
    APPROVAL(1, "审核中"),

    /**
     * 已退回
     */
    BACKED(2, "已退回"),

    /**
     * 已完成
     */
    DONE(3, "已完成");

    private final Integer code;

    private final String message;

    ProcessEntityStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
