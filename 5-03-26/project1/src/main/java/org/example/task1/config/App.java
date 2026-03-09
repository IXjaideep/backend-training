package org.example.task1.config;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App {
    public static void main( String[] args )
    {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        UserRepository a = context.getBean(UserRepository.class);
        UserService s = context.getBean(UserService.class);
        s.display_UserService();
    }
}
