import java.io.*;
class bis
{
	public static void main(String[]args) throws Exception
	{
		FileOutputStream f=new FileOutputStream("bis.txt");
		String a="Heloo this is the demo of byteinputstream";
		byte ar[]=a.getBytes();
		f.write(ar);
		f.close();
		
		FileInputStream fin =new FileInputStream("bis.txt");
		BufferedInputStream bin=new BufferedInputStream(fin);
		bin.skip(2);
		bin.available();
		int i=0;
		while((i=bin.read())!=-1)
		{
			System.out.print((char)i);
		}
	}
}
//Bufferedinputstream is more efficient and has more methods