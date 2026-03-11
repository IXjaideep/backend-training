package com.example.demo;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class info {
    @Value("${app.name}")
    private String info;
    @PostConstruct
    public void print(){
        System.out.println(info);
    }


}
