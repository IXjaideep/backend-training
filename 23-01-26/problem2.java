import java.util.*;
public class problem2 {
    static int totalsum(int a){
        int sum=0;
        for(int i=1;i<=a;i++){
            sum += i;
        }
        return sum;
    }
    static void print(int a){
        for(int i =1;i<=a;i++){
            System.out.print(i+" ");
        }
    }
    static void evenNo(int a){
        for(int i =1;i<=a;i++){
            if((i &1 )== 0){
                System.out.print(i+" ");
            }
        }
    }
    public static void main(String[] args){
        try{
            System.out.println("Enter any Number :-");
            Scanner input = new Scanner(System.in);
            int a = input.nextInt();
            System.out.println(totalsum(a));
            print(a);
            System.out.println(" ");
            evenNo(a);
        }
        finally{
            System.out.println("code ends");
        }
    }
}
