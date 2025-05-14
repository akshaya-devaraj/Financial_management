import java.io.*;
class demoreader
{
	public static void main(String[]args) throws Exception
	{
		char ar[]=new char[100];
		
		Reader rd=new FileReader("bis.txt");
		System.out.println(rd.ready());
		rd.read(ar);
		System.out.println(ar);
		rd.close();
		
	}
}
