import java.io.*;
import java.util.HashMap;

class NoMatter extends Exception {
    public NoMatter(String msg) {
        super(msg);
    }
}

public class problem1 {
    static void EmptyFile(int str) throws NoMatter{
        if(str == -1){
            throw new NoMatter("the file is empty");
        }
    }
    public static void main(String[] args){
        HashMap<String,Integer> map =new HashMap<>();
        try {
            BufferedReader br = new BufferedReader(new FileReader("problem1.txt"));
            BufferedWriter bw  = new BufferedWriter(new FileWriter("ReverseProblem1.txt"));
            String line;
            int Noline = 0;
            int NoWords = 0;
            int NoCharaters = 0;
            StringBuffer b = new StringBuffer();
            EmptyFile(br.read());
            while ((line = br.readLine()) != null)
            {
                Noline++;
                NoCharaters += line.length();
                for (int i = 0; i < line.length(); i++) {
                    if (line.charAt(i) == ' ') {
                        NoWords++;
                        map.put(b.toString(),map.getOrDefault(b,0)+1);
                        b.delete(0, b.length());
                    }
                    else{
                        char one = line.charAt(i);
                        b.append(one);
                    }
                }

                String[] word = line.split(" ");
                for (int j = word.length - 1; j >= 0; j--) {
                    bw.write(word[j]);
                    bw.write(' ');
                }
                bw.newLine();
            }

            System.out.println("Noline :- " + Noline);
            System.out.println("NoWords :- " + (NoWords + Noline)); 
            System.out.println("NoCharaters :- " + NoCharaters);
            br.close();
            bw.close();

        } 
        catch (FileNotFoundException e) {
            System.out.println("File not found");
        } 
        catch (IOException e) {
            System.out.println("IO Error");
        }
        catch(NoMatter e){
            System.out.println(e.getMessage());
        }

    }
}

