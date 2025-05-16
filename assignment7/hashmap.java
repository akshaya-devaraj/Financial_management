import java.util.*;
public class hashmap
{
	public static void main(String[]args)
	{
		HashMap<Integer,String> m=new HashMap<>();
		m.put(1,"apple");
		m.put(2,"date");
		m.put(3,"mango");
		m.put(4,"cherry");
		
		m.put(2,"blueberry");
		m.put(null,"empty");
		m.put(5,null);
		System.out.println(m);
		System.out.println(m.get(2));
		m.remove(3);
		System.out.println("contains key 1 "+m.containsKey(1));
		System.out.println("contains value date "+m.containsValue("date"));
		
		for(Map.Entry<Integer,String> entry:m.entrySet())
		{
			System.out.println(entry.getKey()+"=>"+entry.getValue());
		}
	}
}