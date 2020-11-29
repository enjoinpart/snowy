package com.cn.xiaonuo.pay.core.factory;

import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.env.PropertySource;
import org.springframework.core.io.support.DefaultPropertySourceFactory;
import org.springframework.core.io.support.EncodedResource;

import java.io.IOException;
import java.util.Properties;

/**
 * PropertySource支持yml文件
 *
 * @author xuyuxiang
 * @date 2020/8/11 11:37
 **/
public class YamlConfigFactory extends DefaultPropertySourceFactory {

    private static final String YML_FILE_SUFFIX = "yml";

    private static final String YAML_FILE_SUFFIX = "yaml";

    @Override
    public PropertySource<?> createPropertySource(String name, EncodedResource resource) throws IOException {
        String sourceName = name != null ? name : resource.getResource().getFilename();
        if (!resource.getResource().exists()) {
            assert sourceName != null;
            return new PropertiesPropertySource(sourceName, new Properties());
        } else {
            assert sourceName != null;
            if (sourceName.endsWith(YML_FILE_SUFFIX) || sourceName.endsWith(YAML_FILE_SUFFIX)) {
                Properties propertiesFromYaml = loadYml(resource);
                return new PropertiesPropertySource(sourceName, propertiesFromYaml);
            } else {
                return super.createPropertySource(name, resource);
            }
        }
    }

    private Properties loadYml(EncodedResource resource) {
        YamlPropertiesFactoryBean factory = new YamlPropertiesFactoryBean();
        factory.setResources(resource.getResource());
        factory.afterPropertiesSet();
        return factory.getObject();
    }
}
