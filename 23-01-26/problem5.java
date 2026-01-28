import java.io.*;
public class problem5 {
    public static void main(String []args) throws Exception{
        FileWriter fw = new FileWriter("problem5.txt");
        fw.write("hello i am jaideep");
        fw.write("i am studing");
        fw.close();
        System.out.print("data ends");
        fw.close();
        FileReader fr = new FileReader("problem5.txt");
        int i;
        while((i = fr.read()) != -1){
            System.out.print((char)i);
        }
        fr.close();
    }
}
