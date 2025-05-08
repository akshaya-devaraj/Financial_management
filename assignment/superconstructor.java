//use of super with constructors
class parent
{
	String p_name;
	String p_profession;
	int p_age;
	parent()
	{
		System.out.println("Parent class constructor");
	}
	parent(String p_name,String p_profession,int p_age)
	{
		this.p_name=p_name;
		this.p_profession=p_profession;
		this.p_age=p_age;
	}
}
class child extends parent
{
	String c_name;
	int c_age;
	child()
	{
		super();
		System.out.println("child class constructor");
	}
	child(String p_name,String p_profession,int p_age,String c_name,int c_age)
	{
		super(p_name,p_profession,p_age);
		this.c_name=c_name;
		this.c_age=c_age;
	}
	public void display()
	{
		System.out.println("P_name "+p_name);
		System.out.println("p_profession "+p_profession);
		System.out.println("p_age "+p_age);
		System.out.println("c_name "+c_name);
		System.out.println("c_age "+c_age);
	}

}
class superconstructor
{
	public static void main(String[] args)
	{
		child c1=new child();
		child c=new child("vadivel","farmer",57,"dharshini",21);
		c.display();
		
		
	}
}

	