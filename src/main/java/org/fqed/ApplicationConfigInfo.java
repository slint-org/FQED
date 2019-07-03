package org.fqed;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.lang.reflect.InvocationTargetException;
import java.util.Properties;

/**
 * Convinience wrapper for application properties / configuration
 */

@ConfigurationProperties
@Component
public class ApplicationConfigInfo {

    private static final Logger logger = LoggerFactory.getLogger(ApplicationConfigInfo.class);

    private Environment environment = Environment.PROD;
    private Integer timeoutSeconds;
    private Integer passwordMinimumLength;
    private Integer passwordMaximumLength;
    private Integer passwordHistorySize;
    private Integer passwordExpiresDays;
    private Integer passwordChangeMinimumHoursWait;
    private Integer passwordErrorAttempts;
    private Integer passwordChangeAttempts;
    private Integer accessHistoryMax;

    public Integer getDeveloperId() {
        return developerId;
    }

    public void setDeveloperId(Integer developerId) {
        this.developerId = developerId;
    }

    private Integer developerId;
    private Properties properties;

    @PostConstruct
    public void init() {
        if (properties != null) {
            BeanUtils.copyProperties(this, properties);
        }

        if (getEnv().equals(Environment.DEV)) {

            try {
                final Properties p = new Properties();
                p.load(getClass().getResourceAsStream("/dev.properties"));
                setDeveloperId(Integer.valueOf(p.getProperty("developer")));
            } catch (final Exception e) {
                logger.error("Unable to load dev properties");
            }
        }
    }

    public Environment getEnv() {
        return getEnvironment();
    }

    public Environment getEnvironment() {
        return environment;
    }

    public void setEnvironment(Environment environment) {
        this.environment = environment;
    }

    public Integer getTimeoutSeconds() {
        return timeoutSeconds;
    }

    public void setTimeoutSeconds(Integer timeoutSeconds) {
        this.timeoutSeconds = timeoutSeconds;
    }

    public Integer getPasswordMinimumLength() {
        return passwordMinimumLength;
    }

    public void setPasswordMinimumLength(Integer passwordMinimumLength) {
        this.passwordMinimumLength = passwordMinimumLength;
    }

    public Integer getPasswordMaximumLength() {
        return passwordMaximumLength;
    }

    public void setPasswordMaximumLength(Integer passwordMaximumLength) {
        this.passwordMaximumLength = passwordMaximumLength;
    }

    public Integer getPasswordHistorySize() {
        return passwordHistorySize;
    }

    public void setPasswordHistorySize(Integer passwordHistorySize) {
        this.passwordHistorySize = passwordHistorySize;
    }

    public Integer getPasswordExpiresDays() {
        return passwordExpiresDays;
    }

    public void setPasswordExpiresDays(Integer passwordExpiresDays) {
        this.passwordExpiresDays = passwordExpiresDays;
    }

    public Integer getPasswordChangeMinimumHoursWait() {
        return passwordChangeMinimumHoursWait;
    }

    public void setPasswordChangeMinimumHoursWait(Integer passwordChangeMinimumHoursWait) {
        this.passwordChangeMinimumHoursWait = passwordChangeMinimumHoursWait;
    }

    public Integer getPasswordErrorAttempts() {
        return passwordErrorAttempts;
    }

    public void setPasswordErrorAttempts(Integer passwordErrorAttempts) {
        this.passwordErrorAttempts = passwordErrorAttempts;
    }

    public Integer getPasswordChangeAttempts() {
        return passwordChangeAttempts;
    }

    public void setPasswordChangeAttempts(Integer passwordChangeAttempts) {
        this.passwordChangeAttempts = passwordChangeAttempts;
    }

    public Integer getAccessHistoryMax() {
        return accessHistoryMax;
    }

    public void setAccessHistoryMax(Integer accessHistoryMax) {
        this.accessHistoryMax = accessHistoryMax;
    }

}

