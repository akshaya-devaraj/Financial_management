class callme
{
	synchronized public void call(String msg)
	{
		System.out.print("[");
		System.out.print(msg);
		System.out.println("]");
		this.display();
	}
	public void display()
	{
		System.out.print("hiiiiiii");
	}
}
class caller extends Thread
{
	Thread t=new Thread(this);
	callme c;
	String msg;
	caller(callme c,String msg)
	{
		this.c=c;
		this.msg=msg;
		t.start();
		
	}
	public void run()
	{
		c.call(msg);
	}
}
class sync
{
	public static void main(String[]args)
	{
		callme obj1=new callme();
		caller obj2=new caller(obj1,"Welcome");
		caller obj3=new caller(obj1,"to");
		caller obj4=new caller(obj1,"i-exceed");
	}
}
