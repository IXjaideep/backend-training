import java.util.*;
public class problem3 {
    static int add(int a,int b){
        return a+b;
    }
    static boolean isEven(int a){
        if(a%2 == 0){
            return true;
        }
        return false;
    }
    static int findFactorial(int a){
        int b=1;
        for(int i =1;i<=a;i++){
            b *=i;
        }
        return b;
    }
    public static void main(String[] args) {
        System.out.println("enter any two number:-");
        Scanner in = new Scanner(System.in);
        int a = in.nextInt();
        int b = in.nextInt();
        System.out.println("sum of two number :" + add(a,b));
        System.err.println("number one is even :" + isEven(a));
        System.err.println("number two is even :" + isEven(b));
        System.out.println("factorial of no one :" +findFactorial(a));
        System.out.println("factorial of no two :"+findFactorial(b));
    }
}
