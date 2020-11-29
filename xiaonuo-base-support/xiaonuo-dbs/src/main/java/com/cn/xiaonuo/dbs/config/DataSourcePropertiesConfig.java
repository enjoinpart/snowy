package com.cn.xiaonuo.dbs.config;

import com.cn.xiaonuo.core.pojo.druid.DruidProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * druid属性配置
 *
 * @author xuyuxiang
 * @date 2020/8/25
 */
@Configuration
public class DataSourcePropertiesConfig {

    /**
     * druid属性配置
     *
     * @author xuyuxiang
     * @date 2020/8/25
     */
    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")
    public DruidProperties druidProperties() {
        return new DruidProperties();
    }

}
