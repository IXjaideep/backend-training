package org.example.task3;

import org.example.task3.resources.AppConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class App {

    public static void main(String[] args) {

        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(AppConfig.class);

        jaideep bean = context.getBean(jaideep.class);

        System.out.println("Bean is ready to use");

        context.close();
    }
}