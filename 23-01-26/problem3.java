import java.util.*;
class invalidAge extends Exception{
    invalidAge(String msg) {
        super(msg);
    }
}
public class problem3{
    static int eligibile =18;
    static void ageChecker(int age) throws invalidAge{
        if(age < eligibile){
            throw new invalidAge("not eligibile");
        }
        else{
            System.out.println("yes your eligible");
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter the age of student :-");
        int i =sc.nextInt();
        try{
            ageChecker(i);
        }
        catch(invalidAge e){
            System.out.println(e.getMessage());
        }
    }
}
