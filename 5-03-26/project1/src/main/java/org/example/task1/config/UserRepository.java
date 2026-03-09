package org.example.task1.config;

import org.springframework.stereotype.Component;

@Component
public class UserRepository {
    public UserRepository(){
        System.out.println("--------------------------UserRepository--------------------");
    }
    public void repo1(){
        String project1 = "TaskManagement System Project.zip";
        String Team ="InnovaTech-frontend";
        int n = 10;
        String status = "Completed";
        System.out.println("Project : " + project1 + "Team Name  : "+ Team +" No of members : " + n +" Project Status :" + status);
    }
    public void repo2(){
        String project1 = "TaskManagement System Project.zip";
        String Team ="InnovaTech-frontend";
        int n = 10;
        String status = "Incompleted";
        System.out.println("Project : " + project1 + "Team Name  : "+ Team +" No of members : " + n +" Project Status :" + status);
    }
    public void repo3(){
        String project1 = "SmartHouse-Management System Project.zip";
        String Team ="InnovaTech-frontend";
        int n = 10;
        String status = "Completed";
        System.out.println("Project : " + project1 + "Team Name  : "+ Team +" No of members : " + n +" Project Status :" + status);
    }
    public void repo4(){
        String project1 = "Water-Management System Project.zip";
        String Team ="InnovaTech-frontend";
        int n = 10;
        String status = "Completed";
        System.out.println("Project : " + project1 + "Team Name  : "+ Team +" No of members : " + n +" Project Status :" + status);
    }
    public void repo5(){
        String project1 = "waste-Management System Project.zip";
        String Team ="InnovaTech-frontend";
        int n = 10;
        String status = "Incompleted";
        System.out.println("Project : " + project1 + "Team Name  : "+ Team +" No of members : " + n +" Project Status :" + status);
    }

}
