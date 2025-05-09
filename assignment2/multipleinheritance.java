class parent1
{
	public void display()
	{
		System.out.println("class parent1");
	}
}
class parent2
{
	public void display()
	{
		System.out.println("class parent2");
	}
}
class multipleinheritance extends parent1,parent2
{
	public static void main(String[]args)
	{
		student s=new student();
		s.display();
	}
}