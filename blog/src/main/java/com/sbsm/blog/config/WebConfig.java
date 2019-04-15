package com.sbsm.blog.config;

import com.sbsm.blog.utils.ConstantUtil;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
@Configuration
public class WebConfig extends WebMvcConfigurationSupport {

    /**
     * 资源映射配置
     *  使用此配置，会覆盖 properties 文件中 spring.resources.static-locations 的配置
     * @param registry
     */
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(ConstantUtil.FILE_MAP)
                .addResourceLocations("file:" + ConstantUtil.FILE_PATH);
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/templates/");

        super.addResourceHandlers(registry);
    }

}