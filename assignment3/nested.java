class outer //outer class
{
	String name;
	int age;
	class inner //non static inner class
	{
		String location;
		int pin;
		public void display(String name,int age,String location,int pin)
		{
			System.out.println(name);
			System.out.println(age);
			System.out.println(location);
			System.out.println(pin);
		}
	}
}
class nested
{
	public static void main(String[]args)
	{
		outer obj=new outer();
		outer.inner mobj=obj.new inner();
		mobj.display("Dharshini",21,"Salem",636105);
	}
}
		
		