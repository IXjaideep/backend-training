import java.util.*;
class OutOfStockException extends Exception{
    OutOfStockException(String msg) {
        super(msg);
    }
}
public class problem4 {
    static int quantity= 5000;
    static void IsStockPresent(int stock) throws OutOfStockException{
        if(stock > quantity){
            throw new OutOfStockException("out of stock");
        }
        else{
            System.out.println("stock is available.");
        }
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String name = sc.nextLine();
        int stock = sc.nextInt();
        try {
            System.out.println("hello my name is :"+ name);
            IsStockPresent(stock);
        } catch (OutOfStockException e) {
            System.out.println(e.getMessage());
        }
    }
}
