import java.io.DataInputStream;
class sample
{
	DataInputStream sc=new DataInputStream(System.in);
	sample()
	{
		try
		{
			System.out.println("Welcome");
			String a1=sc.readLine();// getting string as an input
			int a=Integer.parseInt(sc.readLine());//converting string to int
			int b=Integer.valueOf(sc.readLine());//converting string to int using valueof
			float c=Float.valueOf(sc.readLine()).floatValue();//converting string to float
			System.out.println(a1);
			System.out.println(a+b);
			System.out.println(c);
		}
		catch(Exception e){}
	}
}
class demos
{
	public static void main(String[]args)
	{
		new sample();
	}
}
