package org.example.task1.resources;

import org.example.task1.GreetingPlace;
import org.example.task1.GreetingService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
//@ComponentScan("org.example")
public class AppConfig {
    @Bean
    @Scope("prototype")
    public GreetingService greetingservice(int age,String name,String clg,String relation,String function,String place){
        return new GreetingService(age,name,clg,relation,function,place);
    }

    @Bean
    public GreetingPlace greetingPlace(){
        return new GreetingPlace();
    }
}