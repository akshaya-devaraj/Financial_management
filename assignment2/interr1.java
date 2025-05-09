interface parent
{
	public void show();
	public void display();
}
interface student extends parent
{
	public void show1();
	public void display1();
}
class interr1 implements student
{
	public static void main(String[]args)
	{
		interr1 obj=new interr1();
		obj.show();
		obj.show1();
		obj.display();
		obj.display1();
	}
	@Override
	public void show()
	{
		System.out.println("show method of parent interface");
	}
	public void show1()
	{
		System.out.println("show1 method of parent interface");
	}
	public void display()
	{
		System.out.println("display method of student interface");
	}
	public void display1()
	{
		System.out.println("disaplay1 method of student interface");
	}
}