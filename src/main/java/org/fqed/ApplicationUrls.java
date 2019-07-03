package org.fqed;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.PostConstruct;

import org.apache.commons.lang3.StringUtils;
import org.fqed.controller.Routes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class ApplicationUrls {

    private static final Logger logger = LoggerFactory.getLogger(ApplicationUrls.class);
    private static Map<String, String> routes = new HashMap<>();
    private static Set<String> publicRoutes = new HashSet<>();

    @PostConstruct
    public void init() {
        buildRoutes(new Class<?>[]{Routes.class}, StringUtils.EMPTY);
    }

    private static void buildRoutes(Class<?>[] classes, String parent) {

        if(classes == null || classes.length == 0) {
            return;
        }

        for(final Class<?> c : classes) {

            if(c.getDeclaredClasses().length != 0) {

                String s = parent;

                if(!StringUtils.isEmpty(parent)) {
                    s += ".";
                }

                buildRoutes(c.getDeclaredClasses(), s + c.getSimpleName());
            }

            for(final Field f : c.getDeclaredFields()) {

                try {
                    final String key = parent + "." + c.getSimpleName() + "." + f.getName();

                    if(c.isAssignableFrom(Routes.Public.class)) {
                        publicRoutes.add(f.get(c).toString());
                    }

                    routes.put(key, f.get(c).toString());

                } catch (IllegalArgumentException | IllegalAccessException e) {

                    logger.info("Cannot retrieve Routes field value.");
                }
            }
        }
    }

    public Map<String, String> getRoutes() {
        return routes;
    }

}