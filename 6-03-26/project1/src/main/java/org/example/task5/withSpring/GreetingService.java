package org.example.task5.withSpring;

import org.springframework.stereotype.Component;

@Component
public class GreetingService {

    public GreetingService(GreetingPlace greetingPlace) {
        this.greetingPlace = greetingPlace;
    }
    private GreetingPlace greetingPlace;

    private int a;
    private int b;
    public void setter(int a ,int b){
        this.a = a;
        this.b = b;
    }
    public void greet(){
        System.out.println("congratulations to Student with Roll No :"+a);
        System.out.println("congratulations to Student with Roll No :"+b);
        greetingPlace.place();
    }

}
