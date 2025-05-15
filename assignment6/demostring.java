import java.util.*;
public class demostring
{
	public static void main(String[]args)
	{
		String s1=" Hello all";
		String s2="Welcome to java strings";
		
		//length
		System.out.println("Length "+s1.length());
		System.out.println("Length2 "+s2.length());
		
		//charAt
		System.out.println("Character at specifies index "+s1.charAt(2));
		
		//substring
		System.out.println("substring "+s1.substring(1,5));
		
		//equals and equalsignore case

		System.out.println("equals "+s1.equals(" hello all "));
		System.out.println("equalsignorecase "+s1.equalsIgnoreCase("hello all"));
		
		//compareTo
		System.out.println("comapareto "+s1.compareTo("Java"));
		
		//contains
		System.out.println("Contains "+s1.contains("Hello"));
		
		//indexOf and lastIndexOf
		System.out.println("indexOf "+s1.indexOf('a'));
		System.out.println("lastindexof "+s1.lastIndexOf('l'));
		
		//uppercase and lowercase
		System.out.println("uppercase "+s1.toUpperCase());
		System.out.println("lowercase "+s1.toLowerCase());
		
		//trim
		System.out.println("trim "+s1.trim());
		
		//replace and replaceall
		System.out.println("replace "+s1.replace('l','x'));
		System.out.println("replaceall "+s1.replaceAll("l","*"));
		
		//startsWidth endsWidth
		System.out.println("startsWith "+s1.startsWith(" He"));
		System.out.println("endswith " +s1.endsWith("ll"));
		
		//isEmpty and isBlank
		String emp="";
		String blank="   ";
		System.out.println("isempty "+emp.isEmpty());
		System.out.println("isblank "+blank.isBlank());
		
		//split
		String[] r=s2.split(" ");
		System.out.println("split words ");
		for(String r1:r)
		{
			System.out.println(r1+" ");
		}
		
		//join
		String jo=String.join("-","a","b","c");
		System.out.println("joined string "+jo);
		
		//format
		String fo=String.format("Name: %s, Age: %d","Dharshini",21);
	    System.out.println("format "+fo);
		
		//valueOf
		int num=100;
		String st=String.valueOf(num);
		System.out.println("valueof "+st);
		
		//concat
		System.out.println("concat "+s1.concat("!!!"));
	}
}


//output
/*ngth 10
Length2 23
Character at specifies index e
substring Hell
equals false
equalsignorecase false
comapareto -42
Contains true
indexOf 7
lastindexof 9
uppercase  HELLO ALL
lowercase  hello all
trim Hello all
replace  Hexxo axx
replaceall  He**o a**
startsWith true
endswith true
isempty true
isblank true
split words 
Welcome 
to 
java 
strings 
joined string a-b-c
format Name: Dharshini, Age: 21
valueof 100
concat  Hello all!!!*/
