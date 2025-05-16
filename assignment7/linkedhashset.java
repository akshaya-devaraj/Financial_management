import java.util.*;
public class linkedhashset
{
	public static void main(String[]args)
	{
		LinkedHashSet<String> s=new LinkedHashSet<>();
		
		//add
		s.add("apple");
		s.add("banana");
		s.add("mango");
		s.add("banana");
		s.add("orange");
		
		//size();
		System.out.println("size "+s.size());
		
		//contains
		System.out.println("contains apple "+s.contains("apple"));
		
		//iterator
		System.out.println("Iterator ");
		Iterator itr=s.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		//addall
		LinkedHashSet<String> f=new LinkedHashSet<>();
		f.add("guava");
		f.add("kiwi");
		s.addAll(f);
		System.out.println("after addall "+s);
		
		//remove and removeall
		s.remove("guava");
		System.out.println("after removing "+s);
		s.removeAll(f);
		System.out.println("after removing all"+s);
		
		//retainAll
		LinkedHashSet<String> temp=new LinkedHashSet<>();
		temp.add("mango");
		s.retainAll(temp);
		System.out.println("after retainall "+s);
		
		//equals
		System.out.println("equals between two sets "+s.equals(temp));
		
		//empty
		System.out.println("checking empty "+s.isEmpty());
		
		//clear
		s.clear();
		System.out.println("after clearing "+s);	
	}
}

//output
/*size 4
contains apple true
Iterator 
apple
banana
mango
orange
after addall [apple, banana, mango, orange, guava, kiwi]
after removing [apple, banana, mango, orange, kiwi]
after removing all[apple, banana, mango, orange]
after retainall [mango]
equals between two sets true
checking empty false
after clearing []*/
