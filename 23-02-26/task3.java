
import java.util.InputMismatchException;
import java.util.Scanner;

public class task3 {
    static  int add(int a ,int b){
        return a+b;
    }
    static boolean isEven(int a){
        return a%2 == 0;
    }
    static  int findFactorial(int a){
        int fact =1;
         if(a < 0){
            System.out.println("Factorial not defined for negative numbers");
            return -1;
        }

        for(int i =1;i<=a;i++){
            fact = fact*i;
        }
        return fact;
    }
    public static void main(String[] args) {
        try {
            Scanner sc = new Scanner(System.in);
            System.out.println("enter first number : ");
            int a = sc.nextInt();
            System.out.println("enter second number : ");
            int b = sc.nextInt();
            System.out.println("add of two number : " + add(a,b));
            System.out.println("the first number is even :" + isEven(a));
            System.out.println("the second number is even :" + isEven(b));
            System.out.println("the factorial of first number is  :" + findFactorial(a));
            System.out.println("the factorial of second number is :" + findFactorial(b));
        } 
        catch(InputMismatchException e){
            System.out.println("the given value is not valid ");
        }
        catch (Exception e) {
            System.out.println(e);

        }
    }
}
