import java.util.*;
public class arraylist
{
	public static void main(String[]args)
	{
		ArrayList<String> fruits =new ArrayList<>();
		
		//adding elements to an arraylist
		fruits.add("Apple");
		fruits.add("orange");
		fruits.add("banana");
		fruits.add("mango");
		fruits.add("amla");
		System.out.println("Added fruits "+fruits);
		
		//adding elements at specific index
		fruits.add(2,"grapes");
	    System.out.println("Added fruit at specific index "+fruits);
		
		//accessing an element
		System.out.println("Accesing an element "+fruits.get(1));
		
		//updating an element 
		fruits.set(3,"guava");
		System.out.println("Updating the arraylist "+fruits);
		
		//remove by index
		fruits.remove(0);
		System.out.println("remove by index "+fruits);
		
		//remove by value   
		fruits.remove("orange");
		System.out.println("remove by value "+fruits);
		
		//iterating using for loop
		for(int i=0;i<fruits.size();i++)
		{
			System.out.print(fruits.get(i)+" ");
		}
		System.out.println();
		//iterating using foreach loop
		for(String s:fruits)
		{
			System.out.print(s+" ");
		}
		System.out.println();
		
		//iterating using an iterator 
		Iterator itr=fruits.iterator();
		while(itr.hasNext())
		{h.preparefood();
			System.out.print(itr.next()+" ");
		}
		System.out.println();
		
		//sorting in ascending order
		Collections.sort(fruits);
		System.out.println("Ascending order "+fruits);
		
		//sorting in descending order
		Collections.sort(fruits,Collections.reverseOrder());
		System.out.println("Descending order "+fruits);
		
		//searching 
		System.out.println("Check whether it contains or not ??"+fruits.contains("mango"));
		
		//size
		System.out.println("size of the arraylist is "+fruits.size());
		
		//isempty
		System.out.println("isEmpty??? "+fruits.isEmpty());
		
		//converting to array
		String[] fruitarray = fruits.toArray(new String[0]);
		System.out.println("Array "+Arrays.toString(fruitarray));
		
		//clearing list
		fruits.clear();
		System.out.println(fruits);
		
	}
}



//output
/*Added fruits [Apple, orange, banana, mango, amla]
Added fruit at specific index [Apple, orange, grapes, banana, mango, amla]
Accesing an element orange
Updating the arraylist [Apple, orange, grapes, guava, mango, amla]
remove by index [orange, grapes, guava, mango, amla]
remove by value [grapes, guava, mango, amla]
grapes guava mango amla 
grapes guava mango amla 
grapes guava mango amla 
Ascending order [amla, grapes, guava, mango]
Descending order [mango, guava, grapes, amla]
Check whether it contains or not ??true
size of the arraylist is 4
isEmpty??? false
Array [mango, guava, grapes, amla]
[]*/

