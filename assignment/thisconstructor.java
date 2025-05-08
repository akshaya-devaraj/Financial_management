//call current class constructor
class example
{
    String name;
    int age;
    int x;
    int y;
   
    example(String name,int age)
    {
        this(10,20);
        this.name=name;
        this.age=age;
    }
    example(int x,int y)
    {
        this.x=x;
        this.y=y;
    }
    public void add()
    {
        System.out.println(name);
        System.out.println(age);
        System.out.print(x+y);
    }
}
public class thisconstructor
 {
    public static void main(String[]args)
    {
    example obj = new example("Dharshini", 21);
    obj.add();
    }
}
