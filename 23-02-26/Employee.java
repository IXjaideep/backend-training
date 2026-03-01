abstract class Employee {
    protected int  id;
    protected  String name;
    protected int monthlySalary;
    public abstract void empDetails();
}

class info extends Employee{
    public info(int id ,String name ,int monthlySalary){
        this.id = id;
        this.name = name;
        this.monthlySalary = monthlySalary;
    }
    public int getId(){
        return id;
    }
    public String getName(){
        return name;
    }
    public int getSalary(){
        return monthlySalary;
    }
    public void displayEmployeeDetails(){
        System.out.println("employee detail's :");
        System.out.println("id :"+getId());
        System.out.println("name :" + getName());
        System.out.println("monthly Salary :"+getSalary());
    }
    public void calculateAnnualSalary(){
        System.out.println("calculate Annual Salary :" + 12 * monthlySalary);
    }
    static void companyName(String company){
        System.out.println("Company Name :" + company);   
    }

}
