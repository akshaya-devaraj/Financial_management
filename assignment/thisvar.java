class example
{
    String name;
    int age;
    String place;
    example(String name,int age,String place)
    {
        this.name=name;
        this.age=age;
        this.place=place;
    }
    public void display()
    {
        System.out.println(name);
        System.out.println(age);
        System.out.println(place);
    }
}
public class thisvar 
{
    public static void main(String[]args)
    {
    example obj=new example("Dharshini",21,"Salem");
    obj.display();
    }
}
