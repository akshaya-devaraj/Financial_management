class hotel
{
	boolean ready = false;
	synchronized public void eatfood()
	{
		System.out.println("customer is ready to eat");
		if(!ready)
		{
			System.out.println("Food not ready so customer waits");
			try
			{
				wait();
			}
			catch(InterruptedException d){}
		}
		System.out.println("customer eats the food");
	}
	synchronized public void preparefood()
	{
		System.out.println("chef is going to prepare food");
		ready=true;
		System.out.println("Chef prepared food");
		notify();
	}
}
class restaurant_inter_thread
{
	public static void main(String[]args)
	{
		hotel h =new hotel();
		new Thread()
		{
			public void run()
			{
				h.eatfood();
			}
		}.start();
		new Thread()
		{
			public void run()
			{
				h.preparefood();
			}
		}.start();

	}
}


//output
/*customer is ready to eat
Food not ready so customer waits
chef is going to prepare food
Chef prepared food
customer eats the food*/
