package com.cn.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 委托状态
 *
 * @author xuyuxiang
 * @date 2020/5/22 10:40
 */
@Getter
public enum DelegateStatusEnum {

    /**
     * 委托中
     */
    PENDING(0, "委托中"),

    /**
     * 委托结束
     */
    RESOLVED(1, "委托结束"),

    /**
     * 未委托
     */
    NOT(2, "未委托");

    private final Integer code;

    private final String message;

    DelegateStatusEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
