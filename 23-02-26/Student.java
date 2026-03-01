public class Student{
    private int id;
    private String name;
    private int  marks;

    public Student(){
        id = 1;
        name = "jaideep";
        marks = 100;
    }
    public void setInfo(int id ,String name ,int marks){
        this.id = id;
        this.name = name;
        this.marks = marks;
    }
    public int getId(){
        return id;
    }
    public String getName(){
        return name;
    }
    public int getMarks(){
        return marks;
    }
    public boolean isPassed(){
        return marks >= 40;
    }
}