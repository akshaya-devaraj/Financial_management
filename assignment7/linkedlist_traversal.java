import java.util.*;
public class linkedlist_traversal
{
	public static void main(String[]args)
	{
		LinkedList<String>l=new LinkedList<>();
			l.add("Apple");
			l.add("Mango");
			l.add("Banana");
			l.add("Orange");
		
			//for loop
			System.out.println("using for loop");
			for(int i=0;i<l.size();i++)
			{
				System.out.println(l.get(i)+" ");
			}
		
			//for each
			System.out.println("using for each loop");
			for(String f:l)
			{
				System.out.println(f);
			}
		
			//iterator
			System.out.println("using iterator");
			Iterator itr=l.iterator();
			while(itr.hasNext())
			{
				System.out.println(itr.next());
			}
		
			//using listiterator
			System.out.println("using listiterator");
			ListIterator li=l.listIterator();
			while(li.hasNext())
			{
				System.out.println("Forward "+li.next());
			}
			while(li.hasPrevious())
			{
				System.out.println("Previos "+li.previous());
			}
		
			//using foreach lambda
			System.out.println("using foreach+lambda");
			l.forEach(ele->System.out.println(ele));
		
			//using spliterator
			Spliterator sp=l.spliterator();
			System.out.println("using spliterator ");
			sp.forEachRemaining(ele->System.out.println(ele));
		
	}
}