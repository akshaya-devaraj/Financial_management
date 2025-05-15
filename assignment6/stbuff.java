import java.util.*;
public class stbuff
{
	public static void main(String[]args)
	{
		StringBuffer sb=new StringBuffer("Hello");
		
		//append
		sb.append(" World!!");
		System.out.println("After append "+sb);
		
		//insert
		sb.insert(5,"!");
		System.out.println("after insert "+sb);
		
		//replace
		sb.replace(7,9,"all");
		System.out.println("after replacing "+sb);
		
		//delete
		sb.delete(10,13);
		System.out.println("after deleting "+sb);
		
		//reverse()
		sb.reverse();
		System.out.println("after reversing "+sb);
		sb.reverse();
		
		//charAt
		System.out.println("charat "+sb.charAt(2));
		
		//setchar
		sb.setCharAt(2,'x');
		System.out.println("setchar "+sb);
		
		//length()
		System.out.println(sb.length());
		
		//deletechar
		sb.deleteCharAt(2);
		System.out.println("after deleteatchar "+sb);
		
		//setlength
		sb.setLength(5);
		System.out.println("after setlength "+sb);
	}
}

//output
/*After append Hello World!!
after insert Hello! World!!
after replacing Hello! allrld!!
after deleting Hello! all!!
after reversing !!lla !olleH
charat l
setchar Hexlo! all!!
12
after deleteatchar Helo! all!!
after setlength Helo!*/
