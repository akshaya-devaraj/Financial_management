class sample extends Thread
{
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			System.out.println("sample "+i);
		}
	}
}
class sample1 extends Thread
{
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			System.out.println("sample1 "+i);
		}
	}
}
class demomultiple 
{
	public static void main(String[]args) throws InterruptedException
    {
		sample obj1=new sample();
		sample obj2=new sample();
		obj1.start();
		obj1.join();
		obj2.start();
	}
}