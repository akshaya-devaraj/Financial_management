import java.io.*;
class demobais
{
	public static void main(String[]args) throws Exception
	{
		FileOutputStream f1=new FileOutputStream("demobais.txt");
		 
		ByteArrayOutputStream baos= new ByteArrayOutputStream();
		String a="Heloo this is the demo of bytearrayouputstream with inputstream";
		byte ar[]=a.getBytes();
		baos.write(ar);
		baos.writeTo(f1);
		baos.flush();
		baos.close();
		
		ByteArrayInputStream bais=new ByteArrayInputStream(ar);
		System.out.println(bais.available());
		System.out.println(bais.read());
		int i=0;
		while((i=bais.read())!=-1)
		{
			System.out.print((char)i);
		}
	
	}
}