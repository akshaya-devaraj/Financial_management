import java.util.*;
public class hashset
{
	public static void main(String[]args)
	{
		HashSet<String> s=new HashSet<>();
		
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
		HashSet<String> f=new HashSet<>();
		f.add("guava");
		f.add("kiwi");
		s.addAll(f);
		System.out.println("after addall "+s);
		
		//remove and removcveall
		s.remove("guava");
		System.out.println("after removing "+s);
		s.removeAll(f);
		System.out.println("after removing all"+s);
		
		//retainAll
		HashSet<String> temp=new HashSet<>();
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
banana
orange
apple
mango
after addall [banana, orange, apple, kiwi, guava, mango]
after removing [banana, orange, apple, kiwi, mango]
after removing all[banana, orange, apple, mango]
after retainall [mango]
equals between two sets true
checking empty false
after clearing []*/
