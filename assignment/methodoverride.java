
class electricals
{
    public void operation()
    {
        System.out.println("All electrical items run in power");
    }
}
class fan extends electricals
{
    @Override
    public void operation()
    {
        System.out.println("Fan roatates to provide wind circulation");
    }

}
public class methodoverride 
{
    public static void main(String[]args)
    {
        electricals e=new electricals();
        fan f=new fan();
        electricals ref;
        ref=f;
        ref.operation();
    }
}
