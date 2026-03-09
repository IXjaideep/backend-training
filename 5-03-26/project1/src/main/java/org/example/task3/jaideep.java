package org.example.task3;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

@Component
public class jaideep implements InitializingBean, DisposableBean {

    private static final Logger logger = LoggerFactory.getLogger(jaideep.class);

    public jaideep() {
        logger.info("Bean Created");
    }

    @PostConstruct
    public void postConstruct() {
        logger.info("Bean Initialization Started");
    }

    @Override
    public void afterPropertiesSet() {
        logger.info("afterPropertiesSet() executed");
    }

    @PreDestroy
    public void preDestroy() {
        logger.info("Bean is about to be destroyed");
    }

    @Override
    public void destroy() {
        logger.info("destroy() method executed");
    }
}