import java.io.*;
public class problem6{ 
    public static void main(String [] args) throws Exception{
        FileWriter fw = new FileWriter("problem6.txt");
        fw.write("i am from vasavi");
        fw.write("\n");
        fw.write("currently i am studying in 4year");
        fw.close();
        FileReader fr = new FileReader("problem6.txt");
        int in;
        while((in = fr.read()) != -1){
            System.out.print((char)in);
        }
        fr.close();
    }
}
