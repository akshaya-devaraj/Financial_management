import java.io.*;
class student implements Serializable
{
	String name,city;
	int age;
	student(String name,String city,int age)
	{
		this.name=name;
		this.city=city;
		this.age=age;
	}
	
}
class serializ
{
	public static void main(String[]args) throws Exception
	{
		student s=new student("Dharshini","Salem",21);
		FileOutputStream f=new FileOutputStream("serializ.txt");
		ObjectOutputStream os=new ObjectOutputStream(f);
		os.writeObject(s);
		os.close();
		
		FileInputStream f1=new FileInputStream("serializ.txt");
		ObjectInputStream is=new ObjectInputStream(f1);
		//stem.out.println(is.readObject()); retruns the object
		student si=(student)is.readObject();
		System.out.println(si.name);
		System.out.println(si.city);
		System.out.println(si.age);
		
	//static variables cannot be serializable and if we put transient it wont be serializable
		
	}
}
		
	