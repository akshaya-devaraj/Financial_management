import java.io.*;
class buffreader
{
	public static void main(String[]args) throws Exception
	{
		FileReader f=new FileReader("bis.txt");
		BufferedReader bf=new BufferedReader(f);
		//System.out.println(bf.readLine());
		System.out.println("is mark supported "+bf.markSupported());
		System.out.println((char)bf.read());
		bf.mark(4);
		System.out.println((char)bf.read());
		bf.reset();
		System.out.println((char)bf.read());
		int i=0;
		while((i=bf.read())!=-1)
		{
			System.out.print((char)i);
		}
		bf.close();
	}
}