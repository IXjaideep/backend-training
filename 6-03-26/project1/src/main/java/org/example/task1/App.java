package org.example.task1;

import org.example.task1.resources.AppConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App
{
    public static void main( String[] args ){
        try {
            ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
            // System.out.println( "Hello World!" );
            String name;
            int age;
            String clg;
            String relation;
            String function;
            String place;
            Scanner sc = new Scanner(System.in);
            System.out.println("name of student :");
            name = sc.nextLine();
            if(!name.matches("[a-zA-Z ]+")){
                throw new Exception("Name must contain only letters");
            }
            System.out.println("age of the student :");
            age = sc.nextInt();
            sc.nextLine();
            System.out.println("college of student : ");
            clg = sc.nextLine();
            if(!clg.matches("[a-zA-Z ]+")){
                throw new Exception("college must contain only letters");
            }
            System.out.println("Relation of the student with the person :");
            relation = sc.nextLine();
            if(!relation.matches("[a-zA-Z ]+")){
                throw new Exception("relationship description between you two must be de must contain only letters");
            }
            System.out.println("which function you are greeting for :");
            function = sc.nextLine();
            if(!function.matches("[a-zA-Z ]+")){
                throw new Exception("function description must contain only letters");
            }
            System.out.println("place of celebration :");
            place = sc.nextLine();
            if(!place.matches("[a-zA-Z ]+")){
                throw  new Exception("the place of celebration must contain letter only");
            }
            GreetingService g = context.getBean(GreetingService.class, age, name, clg, relation, function,place);
            GreetingPlace p = context.getBean(GreetingPlace.class);
            System.out.println();
            g.greet();
        }
        catch (InputMismatchException e){
            System.out.println("Invalued Input");
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
