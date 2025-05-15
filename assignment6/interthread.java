
class sample
{
	int amount=10000;
	synchronized public void withdraw(int amount) 
	{
		System.out.println("Going to withdraw");
		if(this.amount<amount)
		{
			System.out.println("less balance");
			try{
			wait();
			}
			catch(InterruptedException d){}
		}
	
			this.amount-=amount;
		System.out.println("Withdrawed "+this.amount);
		
	}
	 synchronized public void deposit(int amount)
	{
		System.out.println("Going to deposit");
		this.amount+=amount;
		System.out.println("deposited");
		notify();
	}
}
class interthread
{
	public static void main(String[]args)
	{
		sample s=new sample();
		new Thread()
		{
			public void run()
			{
				s.withdraw(12000);
			}
		}.start();
		new Thread()
		{
			public void run()
			{
				s.deposit(10000);
			}
		}.start();
		
	}
}


//output
/*Going to withdraw
less balance
Going to deposit
deposited
Withdrawed 8000
*/
