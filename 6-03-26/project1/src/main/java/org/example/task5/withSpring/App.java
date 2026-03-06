package org.example.task5.withSpring;

import org.example.task5.withSpring.resources.AppConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        int a;
        int b;
        Scanner sc = new Scanner(System.in);
        System.out.println("enter the value for a :");
        a=sc.nextInt();
        System.out.println("enter the value for b :");
        b=sc.nextInt();
        GreetingService g = context.getBean(GreetingService.class);
        g.setter(a,b);
        g.greet();
    }
}
