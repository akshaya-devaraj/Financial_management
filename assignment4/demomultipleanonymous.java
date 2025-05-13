class demomultipleanonymous
{
	public static void main(String[]args)
	{
		new Thread(){
			public void run()
			{
				for(int i=0;i<5;i++)
				{
					System.out.println("thread1 "+i);
				}
			}
		}.start();
		new Thread(){
			public void run()
			{
				for(int i=0;i<5;i++)
				{
					System.out.println("thread2 "+i);
				}
			}
		}.start();
	}
}
		