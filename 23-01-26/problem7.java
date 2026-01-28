import java.io.*;
public class problem7 {
    public static void main(String[] args) throws Exception{
        BufferedWriter bw = new BufferedWriter(new FileWriter("problem7.txt"));
        bw.write("i helloooo i am the number one");
        bw.newLine();
        bw.write("\n");
        bw.write("hello innovate");
        bw.close();
        BufferedReader br = new BufferedReader(new FileReader("problem7.txt"));
        String  line;
        int i=0;
        while((line = br.readLine()) != null){
           if(" ".equals(line)){
                i++;
           }
            System.out.println(line);
        }
                    System.out.println(i);
    }
}
