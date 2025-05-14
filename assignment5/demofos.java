import java.io.*;
class demofos
{
	public static void main(String[]args) throws Exception
	{
		FileOutputStream f=new FileOutputStream("demofos.txt");
		String a="Heloo this is the demo of fileouputstream";
		byte ar[]=a.getBytes();
		f.write(ar);
		f.close();
		
		FileInputStream fin =new FileInputStream("demofos.txt");
		int i=0;
		while((i=fin.read())!=-1)
		{
			System.out.print((char)i);
		}
	}
}