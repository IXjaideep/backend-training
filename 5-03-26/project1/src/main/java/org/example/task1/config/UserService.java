package org.example.task1.config;

import org.example.task1.config.UserRepository;
import org.springframework.stereotype.Component;

@Component
public class UserService {
    //@Autowired
    private UserRepository remo;

    public UserService(UserRepository remo){
        this.remo = remo;
    }
    //public UserService(){
//        System.out.println("UserService is working");
//    }
    public void display_UserService(){
        System.out.println("------------------------- UserService 1 ---------------");
        remo.repo1();
        System.out.println("------------------------- UserService 2 ---------------");
        remo.repo2();
        System.out.println("------------------------- UserService 3 ---------------");
        remo.repo3();
        System.out.println("------------------------- UserService 4 ---------------");
        remo.repo4();
        System.out.println("------------------------- UserService 5 ---------------");
        remo.repo5();
    }
}
