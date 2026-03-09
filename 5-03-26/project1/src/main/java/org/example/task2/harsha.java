package org.example.task2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class harsha {
    private jaideep jai;

    //circular dependency
//    public harsha(jaideep jai){
//        System.out.println("hellooooooo harsha !!!!!!!");
//        this.jai = jai;
//    }

    public harsha(){
        System.out.println("hellooooooo harsha !!!!!!!");
    }

    @Autowired
    public void setBeanA(jaideep jai){
        this.jai = jai;
    }
}
