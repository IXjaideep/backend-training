class Employee{
    int id;
    String name;
    int monthlySalary;
    static String companyName = "Innovatech";
    public Employee(int id,String name,int monthlySalary){
       this.id = id;
       this.name =name;
       this.monthlySalary=monthlySalary;
    }
    public int calculateAnnualSalary(){
        int salary = 12*monthlySalary;
        return salary;
    }
    public void displayEmployeeDetails(){
        System.out.println("Employee id :" + id);
        System.err.println("Employee Name :"+name);
        System.err.println("Company Name :"+companyName);
        System.out.println("Monthly Salary :"+monthlySalary);
    }
    
}
public class problem5 {
    public static void main(String[] args) {
        Employee e = new Employee(1, "jai", 40000);
        e.displayEmployeeDetails();
        System.out.println("calculate Annual Salary :" +e.calculateAnnualSalary());
    }
    
}
