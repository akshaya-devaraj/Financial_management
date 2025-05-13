class sample extends Thread
{
    Thread t=new Thread(this);//this is for non static method
    public void run()
	{
	  t.setName("Child thread");
	  System.out.println("Name of the thread\t"+t.getName());	
	  System.out.println(t.getPriority());
	}
}
 
 
class demothread2
{
    public static void main(String args[])
	{
	    new sample().start();
	    Thread t=Thread.currentThread(); //it is for static method
	    t.setName("Main thread");
	    System.out.println(t.getName());
	    System.out.println(t.getPriority());
	}
}