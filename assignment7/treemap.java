import java.util.*;
public class treemap
{
	public static void main(String[]args)
	{
		TreeMap<Integer,String> t=new TreeMap<>();
		t.put(30,"thirty");
		t.put(10,"ten");
		t.put(50,"fifty");
		t.put(20,"twenty");
		t.put(40,null);
		
		System.out.println(t);
		System.out.println("first key "+t.firstKey());
		System.out.println("last key "+t.lastKey());
		System.out.println("lowekey(30) "+t.lowerKey(30));
		System.out.println("higherkey(30) "+t.higherKey(30));
		
		for(Map.Entry<Integer,String> entry:t.entrySet())
		{
			System.out.println(entry.getKey()+"=>"+entry.getValue());
		}
	}
}

//output
/*{10=ten, 20=twenty, 30=thirty, 40=null, 50=fifty}
first key 10
last key 50
lowekey(30) 20
higherkey(30) 40
10=>ten
20=>twenty
30=>thirty
40=>null
50=>fifty*/
