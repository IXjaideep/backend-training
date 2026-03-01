
// TASK 2 : Print numbers from 1 to N,Print all even numbers between 1 and N
// Calculate the sum of numbers from 1 to N
import java.util.*;
public class task2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try{
        System.out.println("Enter any number :");
        int a = sc.nextInt();
        System.out.println("Printing all from number 0 to n");
        //Print numbers from 1 to N USING FOR LOOP 
        for(int i =0;i<a;i++){
            System.out.print(i);
        }
        System.out.println();
        //Print numbers from 1 to N USING WHILE LOOP 
        int j =0;
        while (j<a) { 
            System.out.print(j);
            j++;
        }
        j=0;
        System.out.println();
        //Print numbers from 1 to N USING FOR DO WHILE LOOP
        do { 
            System.out.print(j);
            j++;
        } while (j<a);
        System.out.println();
        System.out.println("Printing all even number from 0 to n");
        //,Print all even numbers between 1 and N
        for(int i =0;i<a;i++){
            if(i%2 == 0){ System.out.print(i + " ");}
        }
        System.out.println();
        //Print all even numbers between 1 and N USING WHILE LOOP 
        j=0;
        while(j<a){
            if((j & 1) == 0) {System.out.print(j + " ");}
            j++;
        }
        System.out.println();
        //Print all even numbers between 1 and N USING DO WHILE LOOP
        j=0;
        do { 
            if((j & 1) == 0) {System.out.print(j + " ");}
            j++;
        } while (j<a);
        System.out.println();
        System.out.println("sum of numbers from 1 to N");
        //sum of numbers from 1 to N USING WHILE LOOP 
        j=0;
        int sum =0;
        while(j<a){
            sum += j;
            j++;
        }
        System.out.println("the sum of n number is : " + sum);
    }
    catch(InputMismatchException e){
        System.out.println("Invalid input");
    }
    catch(Exception e){
        System.out.println("Invalid input");
    }
    }
}
