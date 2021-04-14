package vip.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 表单节点类型枚举
 *
 * @author xuyuxiang
 * @date 2020/5/28 10:45
 */
@Getter
public enum FormNodeTypeEnum {

    /**
     * 启动
     */
    START(1, "启动"),

    /**
     * 全局
     */
    GLOBAL(2, "全局"),

    /**
     * 节点
     */
    NODE(3, "节点");

    private final Integer code;

    private final String message;

    FormNodeTypeEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
