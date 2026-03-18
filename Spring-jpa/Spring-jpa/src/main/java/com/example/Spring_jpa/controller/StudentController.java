package com.example.Spring_jpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.Spring_jpa.model.Student;
import com.example.Spring_jpa.StudentRepo;

@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentRepo repo;

    @GetMapping
    public ResponseEntity<List<Student>> getAllStudents() {
        return ResponseEntity.ok(repo.findAll());
    }

    @GetMapping("/name/{name}")
    public ResponseEntity<List<Student>> getStudentsByName(@PathVariable String name) {

        List<Student> students = repo.findByName(name);

        if (students.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(students);
    }

    @GetMapping("/marks/{marks}")
    public ResponseEntity<List<Student>> getStudentsByMarks(@PathVariable int marks) {

        List<Student> students = repo.findStudentsWithMarksGreaterThan(marks);

        if (students.isEmpty()) {
            return ResponseEntity.noContent().build();
        }

        return ResponseEntity.ok(students); 
    }
}