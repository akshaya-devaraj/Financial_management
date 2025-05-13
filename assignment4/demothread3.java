class sample extends Thread
{
	Thread t=new Thread(this);
	public void run()
	{
		for(int i=0;i<10;i++)
		{
			try
			{
			System.out.println("Child "+i);
			t.sleep(1000);
			}
			catch(Exception e){}
			
		}
	}
}
class demothread3
{
	public static void main(String[]args) throws Exception
	{
		sample obj=new sample();
		obj.start();
		Thread t=Thread.currentThread();
		for(int i=0;i<10;i++)
		{
			System.out.println("Main "+i);
			t.sleep(500);
		}
	}
}