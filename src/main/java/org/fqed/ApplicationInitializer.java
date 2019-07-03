package org.fqed;


import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

@Component
public class ApplicationInitializer implements ApplicationListener<ContextRefreshedEvent>, ServletContextAware {

    private static final Logger logger = LoggerFactory.getLogger(ApplicationInitializer.class);

    @Autowired
    private ApplicationUrls urls;

    private boolean started = false;

    /**
     * Handle an application event.
     * @param event the event to respond to
     */
    public void onApplicationEvent(ContextRefreshedEvent event) {
        if (started) {
            return;
        }
        started = true;
        logger.info("Application Started Event");
    }

    public void setServletContext(ServletContext servletContext) {
        servletContext.setAttribute("routes", urls.getRoutes());
        logger.info("setServletContext");
    }

}

