import java.util.*;
public class arraylist_performance
{
	public static void main(String[]args)
	{
		ArrayList<Integer> a=new ArrayList<>();
		for(int i=0;i<10000000;i++)
		{
			a.add(i);
		}
		
		long starttime1=System.nanoTime();
		for(int i=0;i<a.size();i++)
		{
			int num=a.get(i);
		}
		long endtime1=System.nanoTime();
		long duration1=(endtime1-starttime1);
		System.out.println("for loop execution "+duration1+" nanoseconds");
		
		
		Iterator<Integer> itr=a.iterator();
		long starttime2=System.nanoTime();
		while(itr.hasNext())
		{
			int num=itr.next();
		}
		long endtime2=System.nanoTime();
		long duration2=(endtime2-starttime2);
		System.out.println("iterator execution "+duration2+" nanoseconds");
		
	}
}