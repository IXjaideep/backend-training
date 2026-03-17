package com.example.demo.resources;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.StudentAdmissions;
import com.example.demo.service.StudentService;

//task1 -Create a StudentController with base URL /api/students
@RestController
@RequestMapping("/api/students")
public class StudentController {

    private StudentService service;

    public StudentController(StudentService service) {
        this.service = service;
    }


    //Task 2 — Implement GET /api/students
    @GetMapping
    public List<StudentAdmissions> getStudents(){
        return service.getAllStudents();
    }

    //Task 3 — Implement GET /api/students/{id}
    @GetMapping("/{student_id}")
    public StudentAdmissions getStudent(@PathVariable int student_id){
        return service.getStudent(student_id);
    }

    //Task 4 — Implement GET /api/students/search?name=John
    @GetMapping("/search")
    public StudentAdmissions getStudentByName(@RequestParam String name){
        return service.getStudentByname(name);
    }
    //Task 5 — Implement POST /api/students
    @PostMapping
    public String addStudent(@RequestBody StudentAdmissions student){
        service.addStudent(student);
        return "Student Added Successfully";
    }

    //Task 6 — Implement PUT /api/students/{id}
    @PutMapping("/{student_id}")
    public StudentAdmissions UpdateStudentInfo(@PathVariable int student_id,@RequestBody StudentAdmissions student){
        service.UpdateStudentInfo(student_id,student);
        return student;
    }

    //Task 7 — Implement DELETE /api/students/{id}
    @DeleteMapping("/{student_id}")
    public void delete_Student_info(@PathVariable int student_id){
        service.delete_Student_info(student_id);
    }

    //Task 8 — Wrap All Responses in ResponseEntity
    @GetMapping("/response")
    public ResponseEntity<List<StudentAdmissions>> getResponse(){

        List<StudentAdmissions> students = service.getAllStudents();

        if(students.isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<>(students, HttpStatus.OK);
    }
}