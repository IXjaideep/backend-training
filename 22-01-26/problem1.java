
import java.util.*;
public class problem1 {
    static void checknumber(int a){
        if(a>0){
            System.out.println("Positive");
        }
        else if(a<0){
            System.out.println("Negative");
        }
        else{
            System.out.println("Zero");
        }
    }
    static void evenodd(int a){
        if(a%2==0){
            System.out.println("Even");
        }
        else{
            System.out.println("Odd");
        }
    }
    public static void main(String[] args) {
        System.out.println("enter how many times you want to check number:");
        Scanner in = new Scanner(System.in);
        int n  =in.nextInt();
        for(int i =0;i<n;i++){
            System.out.println("Enter a number:");
            int a =in.nextInt();
            checknumber(a);
            evenodd(a);
        }
        in.close();
    }
}