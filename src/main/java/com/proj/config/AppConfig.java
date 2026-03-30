package com.proj.config;

import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
@ComponentScan("com.proj")
@EnableWebMvc
public class AppConfig implements WebMvcConfigurer {

    @Bean
    public org.springframework.web.servlet.view.InternalResourceViewResolver viewResolver() {
        org.springframework.web.servlet.view.InternalResourceViewResolver vr =
                new org.springframework.web.servlet.view.InternalResourceViewResolver();
        vr.setPrefix("/WEB-INF/views/");
        vr.setSuffix(".jsp");
        return vr;
    }
}