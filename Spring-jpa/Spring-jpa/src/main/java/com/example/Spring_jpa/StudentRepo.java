package com.example.Spring_jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.example.Spring_jpa.model.Student;

import java.util.List;

@Repository
public interface StudentRepo extends JpaRepository<Student, Integer> {

    //task6
    List<Student> findByName(String name);

    //task7
    @Query("SELECT s from Student s WHERE s.marks > :marks")
    List<Student> findStudentsWithMarksGreaterThan(int marks);

}
