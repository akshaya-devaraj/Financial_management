import java.io.*;
class filecreation
{
	public static void main(String[]args) throws Exception
	{
		File f=new File(args[0]);
		boolean status=f.createNewFile();
		if(status)
		{
			System.out.println("A new file is created");
		}
		else
		{
			System.out.println("A file is already available");
		}
		System.out.println("Name of the file "+f.getName());
		System.out.println(f.isAbsolute());
		System.out.println("Path "+f.getAbsolutePath());
		System.out.println(f.canRead());
		boolean ex=f.exists();
		if(ex)
		{
			System.out.println("is it readable "+f.canRead());
			System.out.println("is it writable "+f.canWrite());
		}
		System.out.println(f.length());
	
	}
}