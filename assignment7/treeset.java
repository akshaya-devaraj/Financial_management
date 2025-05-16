import java.util.*;
public class treeset
{
	public static void main(String[]args)
	{
		TreeSet<Integer> t=new TreeSet<>();
		t.add(10);
		t.add(50);
		t.add(5);
		t.add(10);
		t.add(40);
		t.add(20);
		t.add(30);
		System.out.println(t);
		System.out.println("First "+t.first());
		System.out.println("Last "+t.last());
		System.out.println("Celing(50) "+t.ceiling(50));
		System.out.println("Floor(50) "+t.floor(50));
		System.out.println("higher(40) "+t.higher(40));
		System.out.println("lower(40) "+t.lower(40));
		System.out.println("subset(30,70) "+t.subSet(30,70));
		System.out.println("headset(50) "+t.headSet(50));
		System.out.println("tailset(40) "+t.tailSet(40));
		
	}
}

//output
/*[5, 10, 20, 30, 40, 50]
First 5
Last 50
Celing(50) 50
Floor(50) 50
higher(40) 50
lower(40) 30
subset(30,70) [30, 40, 50]
headset(50) [5, 10, 20, 30, 40]
tailset(40) [40, 50]*/
