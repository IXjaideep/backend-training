import java.io.*;
import java.util.*;
import java.util.logging.Logger;

class InvalidAgeException extends Exception {
    public InvalidAgeException(String msg) {
        super(msg);
    }
} 
public class problem5 {

    private static final Logger logger = Logger.getLogger(problem5.class.getName());
    static void validateage(int age) throws InvalidAgeException {
        if (age < 18) {
            throw new InvalidAgeException("you are under age");
        }
    }

    static String removemultiplespaces(String s) {
        return s.replaceAll("\\s+", " ").trim();
    }
    static void writeToFile(String path, List<String> records) {
        try{
            BufferedWriter bw = new BufferedWriter(new FileWriter(path));
            for (String r : records) {
                bw.write(r); 
                bw.newLine();
            }
        } catch (IOException e) {
            Logger.getLogger(problem5.class.getName())
                  .severe("Error writing file: " + e.getMessage());
        }
    }

    public static void main(String[] args) {

        Set<String> check = new HashSet<>();
        List<String> Valid = new ArrayList<>();
        List<String> Invalid = new ArrayList<>();
        try{
            BufferedReader br = new BufferedReader(new FileReader("problem5"));
            String record;
            while ((record = br.readLine()) != null) {
                try { 
                    record = removemultiplespaces(record);
                    String[] arr = record.split(","); 
                    if (arr.length != 3) { 
                        throw new IllegalArgumentException("Invalid record format");
                    }
                    String idStr = arr[0].trim(); 
                    String name = arr[1].trim();
                    String ageStr = arr[2].trim();
                    Integer id = Integer.valueOf(idStr);
                    Integer age = Integer.valueOf(ageStr);

                    validateage(age); 
                    if (!check.add(idStr)) {
                        throw new IllegalArgumentException("Duplicate ID");
                    }
                    Valid.add(id + "," + name + "," + age);
                } catch (NumberFormatException e) { 
                    Invalid.add(record + " : Invalid numeric value");
                    logger.warning("Invalid number in record: " + record);
                } catch (InvalidAgeException e) {
                    Invalid.add(record + e.getMessage());
                    logger.warning(e.getMessage() + " in record: " + record);
                }
                catch (IllegalArgumentException e) {
                    Invalid.add(record + e.getMessage());
                    logger.warning(e.getMessage() + " in record: " + record);
                }
            }
        } catch (IOException e) {
            logger.severe("Error reading input file: " + e.getMessage());
        } 
        String validFile =
                "valid.txt";
        String invalidFile =
                "invalid.txt";

        writeToFile(validFile, Valid);
        writeToFile(invalidFile, Invalid);
    }
}