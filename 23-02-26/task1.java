// TASK 1 : TO FIND WEATHER THE GIVE NUMBER IS POSTITVE OR NEGATIVE OR ZERO
//  AND ALSO FIND THAT THE GIVE NUMBER IS EVEN OR ODD

import java.util.InputMismatchException;
import java.util.Scanner;

public class task1 {
public static void main(String args[]){
    System.out.println("enter number of times you want to enter a number :-");
    Scanner sc = new Scanner(System.in);
    int a = sc.nextInt();
    for(int i =0;i<a;i++){
        try 
        {
            System.out.println("enter the number :");
            int b = sc.nextInt();
            //TASK1A : TO FIND WEATHER THE GIVE NUMBER IS POSTITVE OR NEGATIVE OR ZERO
            // method 1 : using if-else 
            // if(b == 0){
            //     System.out.println("the number is zero");
            // }
            // else if(b>0){
            //     System.out.println("even number");
            // }
            // else{
            //     System.out.println("negative number");
            // }

            //method 2: Using ternary operator
            // String ans = (b == 0) ? "the number is zero" : (b > 0) ? "positive number" : "negative number";
            // System.out.println(ans);

            //method 3 : Using right shift operator
            // if(b == 0){System.out.println("the number is zero");}
            // else if((b>>31) == 0){System.out.println("positive number");}
            // else{System.out.println("negative number");}

            //method 4 : Using AND operator
            // if(b == 0){System.out.println("the number is zero");}
            // else if(( b & (1<<31)) == 0){System.out.println("the number is postive");}
            // else{System.out.println("the number is negative");}

            //TASK1B :FIND THAT THE GIVE NUMBER IS EVEN OR ODD
            // method1 : Using mod
            // if(b%2 == 0){ System.out.println("even number");}
            // else{System.out.println("odd number");}
            //method 2 Using ternary operator
            // String ans = (b%2 == 0) ? "the number is even " : " the number is odd";
            // System.out.println(ans);
            //method 3 :Using bitwise
            // String ans = ((b & 1) == 0 )? "the number is even" :"the number is odd";
            // System.out.println(ans);
            //TASK 1C : BOTH COMBINE 1A AND 1B
            //method 1 : Using AND operator
            if(b == 0){
                System.out.println("the number is zero");
                System.out.println("the number is even");
            }
            else if(( b & (1<<31)) == 0){
                System.out.println("the number is postive");
                String ans = (b%2 == 0) ? "the number is even " : " the number is odd";
                System.out.println(ans);
            }
            else{
                System.out.println("the number is negative");
                String ans = (b%2 == 0) ? "the number is even " : " the number is odd";
                System.out.println(ans);

            }
        }
        catch(InputMismatchException e){
            System.out.println("invalid input");
            break;
        }
        catch(Exception e){
            System.err.println("invalid input");
            break;
        }
    }
    }
}