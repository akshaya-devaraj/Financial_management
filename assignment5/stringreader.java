import java.io.*;
class stringreader
{
	public static void main(String[]args) throws Exception
	{
		String st="This is a beautiful city";
		StringReader s=new StringReader(st);
		System.out.println((char)s.read());
		int i=0;
		s.skip(5);
		while((i=s.read())!=-1)
		{
			System.out.print((char)i);
		}
		s.close();
	}
}
		