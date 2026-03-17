package com.example.demo.repository;

import com.example.demo.model.StudentAdmissions;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository
public class StudentRepo {

    List<StudentAdmissions> students = new ArrayList<>();

    public StudentRepo() {

        students.add(new StudentAdmissions(1, "jaideep", 20, "O+"));
        students.add(new StudentAdmissions(2, "anurag", 22, "A+"));
        students.add(new StudentAdmissions(3, "girish", 21, "O+"));

    }

    public List<StudentAdmissions> getAllStudents() {
        return students;
    }

    public void addStudent(StudentAdmissions student) {
        students.add(student);
    }

    public StudentAdmissions getStudent(int studentId) {
        for (StudentAdmissions student : students) {
            if (studentId == student.getId()) {
                return student;
            }
        }
        return null;
    }

    public StudentAdmissions getStudentByname(String name) {
        for (StudentAdmissions student : students) {
            if (student.getName().equals(name)) {
                return student;
            }
        }
        return null;
    }

    public void UpdateStudentInfo(int studentId, StudentAdmissions student) {
        for(StudentAdmissions student_info : students){
            if(student_info.getId() == studentId){
                student_info.setName(student.getName());
                student_info.setAge(student.getAge());
                student_info.setBloodGroup(student.getBloodGroup());

            }
        }
    }

    public void delete_Student_info(int studentId) {
        for(StudentAdmissions student : students){
            if(student.getId() == studentId){
                students.remove(student);
            }
        }
    }
}
