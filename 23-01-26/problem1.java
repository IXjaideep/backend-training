import java.lang.*;
import java.util.*;
public class problem1{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String a = "jaideep";
        a = a+"aaaa";
        String input = sc.nextLine();
        StringBuilder s = new StringBuilder(input);
        s.append(a);
        char i = a.charAt(0);
        char o = a.charAt(1);
        int result = a.codePointAt(0);
        String[] str = s.toString().split(" ");
        
        for(int j=0;j<str.length;j++){
            System.out.println(str[j]);
        }
        System.out.println(a.concat("hello"));
        System.out.println(a.compareTo(input));
        System.out.println(a.length());
        System.out.println(a.toLowerCase());
        System.out.println(a.toUpperCase());
        System.out.println(s);
        System.out.println(i);
        System.out.println(s);
        System.out.println(a);
    }
}