import java.util.*;
public class linkedlist
{
	public static void main(String[]args)
	{
		LinkedList<String> l=new LinkedList<>();
		
		//adding elememts
		l.add("apple");
		l.add("banana");
		l.add("orange");
		l.add("grapes");
		l.add("mango");
		l.add("cherry");
	
		//adding at specific index
		l.add(1,"Blueberry");
		
		//add at first and last
		l.addFirst("amla");
		l.addLast("guave");
			
		//display
		System.out.println("Linked list "+l);
			
		//access elements
		System.out.println("first element "+l.getFirst());
		System.out.println("last element "+l.getLast());
		System.out.println("element at index 2 "+l.get(2));
		
		//modify elements
		l.set(2,"Blackberry");
		System.out.println("After modifyin "+l);
		
		//remove
		l.remove(3);
		l.remove("orange");
		System.out.println("after removing "+l);
		
		//remove first and last
		l.removeFirst();
		l.removeLast();
		System.out.println("After removing first and last "+l);
		
		//stack opr
		l.push("strawberry");
		System.out.println("after pushing "+l);
		l.pop();
		System.out.println("after popping "+l);
		
		//queue opr
		l.offer("watermelon");
		System.out.println("after offer "+l);
		System.out.println("after peeking "+l.peek());
		l.poll();
		System.out.println("after poll "+l);
		
		//properties
		System.out.println("contains banana "+l.contains("banana"));
		System.out.println("is empty?? "+l.isEmpty());
		System.out.println("size "+l.size());
		
		//clear list
		l.clear();
		System.out.println("After clering "+l);
	}
}


//output
/*Linked list [amla, apple, Blueberry, banana, orange, grapes, mango, cherry, guave]
first element amla
last element guave
element at index 2 Blueberry
After modifyin [amla, apple, Blackberry, banana, orange, grapes, mango, cherry, guave]
after removing [amla, apple, Blackberry, grapes, mango, cherry, guave]
After removing first and last [apple, Blackberry, grapes, mango, cherry]
after pushing [strawberry, apple, Blackberry, grapes, mango, cherry]
after popping [apple, Blackberry, grapes, mango, cherry]
after offer [apple, Blackberry, grapes, mango, cherry, watermelon]
after peeking apple
after poll [Blackberry, grapes, mango, cherry, watermelon]
contains banana false
is empty?? false
size 5
After clering []*/
