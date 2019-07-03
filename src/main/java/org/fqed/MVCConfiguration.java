package org.fqed;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@Configuration
@EnableWebMvc
public class MVCConfiguration extends WebMvcConfigurerAdapter {

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        final InternalResourceViewResolver resolver = new InternalResourceViewResolver();

        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        resolver.setContentType("application/html");


        registry.viewResolver(resolver);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        final InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        registry.addResourceHandler("/css/**").addResourceLocations("WEB-INF/jsp/static/css/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/js/**").addResourceLocations("WEB-INF/jsp/static/js/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/img/**").addResourceLocations("WEB-INF/jsp/static/img/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/auth/img/**").addResourceLocations("WEB-INF/jsp/static/img/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/nav/**").addResourceLocations("WEB-INF/jsp/static/nav/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/documents/**").addResourceLocations("WEB-INF/jsp/public/documents/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/secure/clients/**").addResourceLocations("WEB-INF/jsp/static/secure/clients/").resourceChain(true).addResolver(new PathResourceResolver());
        registry.addResourceHandler("/secure/**").addResourceLocations("WEB-INF/jsp/static/secure/").resourceChain(true).addResolver(new PathResourceResolver());
    }
}
