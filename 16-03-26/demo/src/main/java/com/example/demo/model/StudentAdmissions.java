package com.example.demo.model;

public class StudentAdmissions {

    private int id;
    private String name;
    private int age;
    private String BloodGroup;

    public StudentAdmissions() {
    }
    public StudentAdmissions(int id,String name,int age,String BloodGroup){
        this.age=age;
        this.name=name;
        this.BloodGroup=BloodGroup;
        this.id=id;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBloodGroup() {
        return BloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        BloodGroup = bloodGroup;
    }

}
