class student {
    private int  id;
    private String name;
    private int marks;

    public student(int id,String name,int marks){
        this.id = id;
        this.name = name;
        this.marks = marks;
    }
    public void setId(int id){
        this.id=id;
    }
    public void setString(String name){
        this.name=name;
    }
    public void setMarks(int marks){
        this.marks=marks;
    }
    public int getId(){
        return id;
    }
    public String getString(){
        return name;
    }
    public int getMarks(){
        return marks;
    }
    public boolean Passed() {
        return marks >= 40;
    }
}
public class problem4 {
        static void print(student s){
            System.out.println("id :"+s.getId());
            System.out.println("Name :"+s.getString());
            System.out.println("Marks :"+s.getMarks());

            if(s.Passed()){
                System.out.println("Student is passed");
            }
            else{
                System.out.println("Student is failed");

            }
            
        }
        public static void main(String[] args) {
        student student1 = new student(10,"jai",80);
        student student2 = new student(20,"deep",0);
        student s = new student(0,"",0);
        s.setMarks(20);
        s.setId(1);
        s.setString("kook");
        print(student1);
        print(student2);
        print(s);
        
    }
}
