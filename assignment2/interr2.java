interface college
{
	String name="Shakthi";
	int ccode=2727;
	public void display();
}
class student implements college
{
	@Override
	//name="Dharshini" changing the variable name leads to an error
	public void display()
	{
		System.out.println("Name of clg "+name);
		System.out.println("Counselling code "+ccode);
	}
}
class interr2
{
	public static void main(String[]args)
	{
		student s=new student();
		s.display();
	}
}
