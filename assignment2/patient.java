import access.doctor;
class patient1 extends doctor
{
	String name;
	String city;
	String disease;
	int age;
	patient1(String name,String city,String specification,int pin,String disease,int age)
	{
		super(name,city,specification,pin);
		this.disease=disease;
		this.age=age;
	}
	public void displaypatient()
	{
		System.out.println("Disease "+disease);
		System.out.println("Age "+age);
	}
}
class patient
{
	public static void main(String[]args)
	{
		patient1 obj=new patient1("Dharshini","salem","general",636105,"flu",21);
		obj.displaydoctor();
		obj.displaypatient();
	}
}