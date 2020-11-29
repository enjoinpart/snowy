package org.flowable.ui.modeler.conf;

import org.flowable.ui.common.service.idm.RemoteIdmService;
import org.flowable.ui.modeler.properties.FlowableModelerAppProperties;
import org.flowable.ui.modeler.servlet.ApiDispatcherServletConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * 覆盖ApplicationConfiguration，移除flowable的idm认证
 *
 * @author xuyuxiang
 * @date 2020/4/14 10:07
 */
@Configuration
@EnableConfigurationProperties({FlowableModelerAppProperties.class})
@ComponentScan(basePackages = {
        "org.flowable.ui.modeler.repository",
        "org.flowable.ui.modeler.service",
        "org.flowable.ui.common.service",
        "org.flowable.ui.common.repository",
        "org.flowable.ui.common.tenant"},
        excludeFilters = {
                @ComponentScan.Filter(type = FilterType.ASSIGNABLE_TYPE, value = RemoteIdmService.class)
        })
public class ApplicationConfiguration {

    @Bean
    @SuppressWarnings("ALL")
    public ServletRegistrationBean apiServlet(ApplicationContext applicationContext) {
        AnnotationConfigWebApplicationContext dispatcherServletConfiguration = new AnnotationConfigWebApplicationContext();
        dispatcherServletConfiguration.setParent(applicationContext);
        dispatcherServletConfiguration.register(ApiDispatcherServletConfiguration.class);
        DispatcherServlet dispatcherServlet = new DispatcherServlet(dispatcherServletConfiguration);
        ServletRegistrationBean<DispatcherServlet> registrationBean = new ServletRegistrationBean<>(dispatcherServlet);
        registrationBean.addUrlMappings("/api/*");
        registrationBean.setName("Flowable IDM App API Servlet");
        registrationBean.setLoadOnStartup(1);
        registrationBean.setAsyncSupported(true);
        return registrationBean;
    }
}