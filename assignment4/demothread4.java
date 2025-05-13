class sample extends Thread
{
	Thread t=new Thread(this);
	sample()
	{
	}
	public void run()
	{
		for(int i=0;i<10;i++)
		{
			try
			{
			System.out.println(i);
			t.sleep(1000);
			}
			catch(InterruptedException e)
			{
				System.out.println(e.getMessage());
			}
		}
	}
}
class demothread4 
{
	public static void main(String[]args) throws InterruptedException
	{
		sample obj1=new sample();
		obj1.start();
		obj1.join();
		sample obj2=new sample();
		obj2.start();
		sample obj3=new sample();
		obj3.start();
	}
}