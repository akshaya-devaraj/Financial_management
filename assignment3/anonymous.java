class sample
{
	public void display(){}
}
class anonymous
{
	public static void main(String[]args)
	{
		new sample()
		{
			public void display()
			{
				System.out.println("HIIIII");
			}
		}.display();
	}
}
