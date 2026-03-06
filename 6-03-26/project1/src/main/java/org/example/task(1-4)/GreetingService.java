package org.example.task1;

import org.example.task1.GreetingPlace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
//@Scope("prototype")
public class GreetingService {
    @Autowired
    public GreetingPlace greetingPlace;
    private int age;
    private String name;
    private String clg;
    private String relation;
    private String function;

    private String place;
    public GreetingService(int age,String name ,String clg,String relation,String function,String place){
        this.age = age;
        this .name =name;
        this.relation=relation;
        this.clg=clg;
        this.function = function;
        this .place = place;
    }
    public void greet(){
        System.out.println("Happy " +function+" to "+name+" of age "+age+" from "+clg +" great greet from your " +relation );
        greetingPlace.sum(place);
    }
}
