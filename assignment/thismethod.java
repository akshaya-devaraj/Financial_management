class example
{
    example()
    {
        System.out.println("Welcome");
    }
    public void display()
    {
        System.out.println("This is Dharhini");
    }
    public void display2()
    {
        this.display();
        System.out.println("This is to call the current class method");
    }
}
public class thismethod 
{
    public static void main(String[]args)
    {
        example obj=new example();
        obj.display2();
    }
}
