import java.io.*;
class demobaos
{
	public static void main(String[]args) throws Exception
	{
		FileOutputStream f1=new FileOutputStream("demobaos.txt");
		FileOutputStream f2=new FileOutputStream("demobaos1.txt");
		 
		ByteArrayOutputStream baos= new ByteArrayOutputStream();
		String a="Heloo this is the demo of bytearrayouputstream";
		byte ar[]=a.getBytes();
		baos.write(ar);
		baos.writeTo(f1);
		baos.writeTo(f2);
		baos.flush();
		baos.close();
	}
}