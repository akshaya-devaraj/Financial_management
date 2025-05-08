class example
{
    public void add(int x)
    {
        System.out.println(x);
    }
    public void add(int x,int y)
    {
        System.out.println(x+y);
    }
    public void add(int x,int y,int z)
    {
        System.out.println(x+y+z);
    }
    public void add(String a,int x)
    {
        System.out.println(a+x);
    }
}

public class methodoverload 
{
    public static void main(String[]args)
    {
    example obj=new example();
    obj.add(5);
    obj.add(5,10);
    obj.add(5,10,15);
    obj.add("Dharshini",21);
    }
}
