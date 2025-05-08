//use of super with methods
class country
{
    String name;
    String capital;
    country(String name,String capital)
    {
        this.name=name;
        this.capital=capital;
    }
    public void displaycountry()
    {
        System.out.println("Country name "+name);
        System.out.println("Capital "+capital);
    }
}
class state extends country
{

    String s_name;
    String s_capital;
    state(String name, String capital,String s_name,String s_capital) 
    {
        super(name,capital);
       this.s_name=s_name;
       this.s_capital=s_capital;
    }
    public void displaystate()
    {
        super.displaycountry();
        System.out.println("s_name "+s_name);
        System.out.println("s_capital "+s_capital);
    }
    
}
public class supermethod 
{
    public static void main(String[]args)
    {
       
        state s=new state("INDIA","NEW DELHI","TAMIL_NADU","CHENNAI");
        s.displaystate();
    }
}
