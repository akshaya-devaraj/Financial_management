import java.io.*;
class dos
{
	public static void main(String[]args) throws Exception
	{
		FileOutputStream f=new FileOutputStream("dos.txt");
		DataOutputStream d=new DataOutputStream(f);
		d.writeInt(8);
		d.writeBoolean(true);
		d.writeDouble(23.78);
		d.writeChar('a');
		
		FileInputStream f1=new FileInputStream("dos.txt");
		DataInputStream d1=new DataInputStream(f1);
		System.out.println(d1.readInt());
		System.out.println(d1.readBoolean());
		System.out.println(d1.readDouble());
		System.out.println(d1.readChar());
		
		DataInputStream d2=new DataInputStream(System.in);
		int x=Integer.valueOf(d2.readLine()).intValue();
		System.out.println(x);
		int y=Integer.valueOf(d2.readLine()).intValue();
		System.out.println(y);
		System.out.println(x+y);
	}
}