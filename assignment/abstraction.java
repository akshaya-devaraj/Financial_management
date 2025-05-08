abstract class payment
{
    public void appname()
    {
        System.out.println("Welcome to gpaay");
    }
    abstract void pay(int amount);
}
class onlinepayment extends payment
{
    @Override
    public void pay(int amount)
    {
        System.out.println(amount+" payed using upi");
    }
}

public class abstraction 
{
    public static void main(String[]args)
    {
        onlinepayment p1=new onlinepayment();
        p1.appname();
        p1.pay(500);
    }
}
