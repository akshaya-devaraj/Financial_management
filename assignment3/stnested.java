class outer
{
	static String name="Dharshini";
	static int age=21;
	static class inner
	{
		String location="Salem";
		void display()
		{
			System.out.println("Name "+name);
			System.out.println("Age "+age);
			System.out.println("Location "+location);
		}
	}
}
class stnested
{
	public static void main(String[]args)
	{
		outer.inner obj=new outer.inner();
		obj.display();
	}
}
		