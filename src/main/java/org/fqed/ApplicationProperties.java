package org.fqed;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.properties.EncryptableProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerExceptionResolver;

import java.io.IOException;
import java.util.Properties;


@Configuration
public class ApplicationProperties {

    @Bean
    public StandardPBEStringEncryptor configurationEncryptor() {
        final StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
        encryptor.setAlgorithm("PBEWithMD5AndDES");
        encryptor.setPassword("xp5raykEcHvRH4pPcWdGCgEC");
        return encryptor;
    }

    @Bean
    public Properties properties() throws IOException {
        final Properties properties = new EncryptableProperties(configurationEncryptor());
        properties.load(getClass().getClassLoader().getResourceAsStream("application.properties"));
        return properties;
    }
}