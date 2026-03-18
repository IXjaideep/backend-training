package com.example.Spring_jpa;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import com.example.Spring_jpa.model.Student;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ApplicationContext context=	SpringApplication.run(Application.class, args);
		Student s1= context.getBean(Student.class);
		Student s2=context.getBean(Student.class);
		Student s3=context.getBean(Student.class);

		StudentRepo repo=context.getBean(StudentRepo.class);

	  s1.setRollNo(101);
	  s1.setName("jaideep");
	  s1.setMarks(75);


	  s2.setRollNo(102);
	  s2.setName("rishi");
	  s2.setMarks(80);


	  s3.setRollNo(103);
	  s3.setName("amogh");
	  s3.setMarks(70);

	  repo.save(s1);
	  repo.save(s2);
	  repo.save(s3);

		System.out.println(repo.findAll());

		//task6
		System.out.println("Find by Name:");
		System.out.println(repo.findByName("Navin"));

		// Task 7
		System.out.println("Marks > 72:");
		System.out.println(repo.findStudentsWithMarksGreaterThan(72));

	}

}