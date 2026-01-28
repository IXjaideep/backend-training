import java.util.*;
import java.util.logging.*;
public class problem4 {
    private static final Logger logger = Logger.getLogger(problem4.class.getName());
    public static void main(String[] args) {
        List<String> str = List.of("10", "3.5", "abc", "20", "4.5");

        List<Number> numbers = new ArrayList<>();

        for (String element : str) {
            try {
                if (element.contains(".")) {
                    numbers.add(Double.parseDouble(element));
                } else {
                    numbers.add(Integer.parseInt(element));
                }
            } catch (NumberFormatException e) {
                logger.warning("Invalid input: " + element);
            }
            // catch(InputMismatchException e){
            //     logger.warning("Invalid input: ");
            // }
            // it's does the same function as NumberFormatException
        }

        int intSum = 0;
        double doubleSum = 0.0;
        int count = 0;

        for (Number number : numbers) {
            if (number instanceof Integer) {
                intSum += number.intValue();
            } else if (number instanceof Double) {
                doubleSum += number.doubleValue();
                count++;
            }
        }

        double avg;
        if(count > 0){
                avg = doubleSum / count;
        }else{
            avg = 0;
        }

        System.out.println("Sum of integers: " + intSum);
        System.out.println("Average of floating-point numbers: " + avg);
    }
}
