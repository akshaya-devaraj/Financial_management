import java.util.*;
public class linkedhashmap
{
	public static void main(String[]args)
	{
		LinkedHashMap<Integer,String> m=new LinkedHashMap<>();
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

//output
/*{1=apple, 2=blueberry, 3=mango, 4=cherry, null=empty, 5=null}
blueberry
contains key 1 true
contains value date false
1=>apple
2=>blueberry
4=>cherry
null=>empty
5=>null*/
