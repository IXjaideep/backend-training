import java.util.*;
public class problem2 {
        public static void main(String[] args) {
        String[] arr1 = {"jai","Ravi","Mahesh","harsha","Sai","jai","jai","nani","Pari","Pari","Pari","nani"};
        Scanner sc = new Scanner(System.in);
        // int n;
        // System.out.println("enter the size of the array");
        // String[] arr2 = new String[n];
        ArrayList<String> employee = new ArrayList<>();
        for(String word : arr1){
            employee.add(word);
        }
        HashMap<String,Integer> Employeefrequency = new HashMap<>();
        for( String name : employee){
            Employeefrequency.put(name,Employeefrequency.getOrDefault(name,0)+1);
        }
        HashSet<String> RemoveDuplicates = new HashSet<>();
        for(String word : employee){
            RemoveDuplicates.add(word);
        }
        Iterator<String> it = employee.iterator();
        System.out.println("Display the employee Details :-");
        while(it.hasNext()){
            System.out.println("name of the employee is :" +it.next());
        }
        System.out.println("Display the Employeefrequency Details :-");
        System.out.println("------------------------------");
        System.out.println("    Name\t|      Frequency");        
        for(String i : Employeefrequency.keySet()){
            System.out.print(i + "\t\t | ");
            System.out.println(Employeefrequency.get(i));
        }
        System.out.println("------------------------------");
        System.out.println("Display the employee Details After Remove Duplicates:-");
        for(String name : RemoveDuplicates){
            System.out.println(name);
        }
    }   
}