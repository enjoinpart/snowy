package vip.xiaonuo.dbs.core.annotation;

import java.lang.annotation.*;

/**
 * 多数据源标识
 *
 * @author xuyuxiang
 * @date 2020/8/24
 */
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface DataSource {

    /**
     * 数据源的名称
     */
    String name() default "";

}
