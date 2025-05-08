class parent
{
    String name="vadivel";
}
class child extends parent
{
    String c_name="Dharshini";
    public void display()
    {
        System.out.println(c_name);
        System.out.println(super.name);
    }
}
class supervariable
{
    public static void main (String[]args)
    {
        child c=new child();
        c.display();
    }
}