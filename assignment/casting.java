class phone
{
    public void model()
    {
        System.out.println("Companies provide diff models");
    }
}
class vivo extends phone
{
    // public void model()
    // {
    //     System.out.println("This is a vivo phone");
    // }
    public void cost()
    {
        System.out.println("this phone is cheap");
    }
}
public class casting 
{
    public static void main(String[]args)
    {
        vivo v=new vivo();
        phone p=v;
        p.model();
    }
}
