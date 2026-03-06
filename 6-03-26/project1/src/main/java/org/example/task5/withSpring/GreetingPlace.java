package org.example.task5.withSpring;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class GreetingPlace {
    public void place(){
        System.out.println("greeting place");
    }
}
