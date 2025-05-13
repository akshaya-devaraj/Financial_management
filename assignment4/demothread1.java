class  sample extends Thread
{
    public void run()
	{
	   System.out.println("Welcome to thread..");
	   for(int i=0;i<10;i++)
		{
		   System.out.println(i);
		}
	}
}
class demothread1
{
     public static void main(String asd[])
	{
	    sample obj=new sample();
	    obj.start();
	   // obj1.start();//if you call twice it causes error
	}
}