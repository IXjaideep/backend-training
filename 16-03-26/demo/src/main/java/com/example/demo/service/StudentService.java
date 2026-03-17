package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.StudentAdmissions;
import com.example.demo.repository.StudentRepo;

@Service
public class StudentService {

    private StudentRepo repo;

    public StudentService(StudentRepo repo) {
        this.repo = repo;
    }

    public List<StudentAdmissions> getAllStudents(){
        return repo.getAllStudents();
    }

    public void addStudent(StudentAdmissions student){
        repo.addStudent(student);
    }

    public StudentAdmissions getStudent(int studentId) {
        return repo.getStudent(studentId);
    }

    public StudentAdmissions getStudentByname(String name) {
        return repo.getStudentByname(name);
    }

    public void UpdateStudentInfo(int studentId, StudentAdmissions student) {
         repo.UpdateStudentInfo(studentId,student);
    }

    public void delete_Student_info(int studentId) {
        repo.delete_Student_info(studentId);
    }
}