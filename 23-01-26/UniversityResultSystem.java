import java.util.*;
class InvalidMarksException extends  Exception{
    InvalidMarksException(String msg) {
        super(msg);
    }
}
class person{
    String name;
    public person(String n) {
        this.name=n;
    }
    void display(){
        System.out.println("name of the student : " + name);
    }
}
class Student extends person{
    int marks;
    public Student(String name , int marks) {
        super(name);
        this.marks = marks;
    }
    void calculateResult() throws InvalidMarksException{
        if(marks <0  || marks >100){
            throw new InvalidMarksException("Invalid Marks");
        }
        if(marks >= 40){
            System.out.println("PASS");
        }
        else{
            System.out.print("FAIL");
        }
    }
    
}
public class UniversityResultSystem {
    
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("enter the name of student");
        String name = sc.nextLine();
        System.out.println("enter the marks");
        int marks = sc.nextInt();
        Student s1 = new Student(name,marks);
        try {
            s1.display();
            s1.calculateResult();
        } 
        catch (InvalidMarksException e) {
            System.out.println(e.getMessage());
        } 
        finally {
            System.out.println("Process finished");
    }
}
}
