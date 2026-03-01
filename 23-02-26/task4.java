
import java.util.InputMismatchException;
import java.util.Scanner;

public class task4 {
    public static void main(String[] args) {
        Student obj = new Student();
        Scanner sc = new Scanner(System.in);
        try{
            System.out.println("number of student :");
            int n = sc.nextInt();
            for(int i =0;i<n;i++){
            System.out.println("enter the id of the student :");
            int d=sc.nextInt();
            sc.nextLine();
            System.out.println("enter the names of student");
            String name = sc.nextLine();
            System.out.println("enter the marks of the student");
            int mark =sc.nextInt();
            obj.setInfo(d, name, mark);
            System.out.println("Id :"+ obj.getId()+ "Name :" +obj.getName() +"marks :"+ obj.getMarks());
            }
        }
        catch(InputMismatchException e){
            System.out.println("invalid input");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
