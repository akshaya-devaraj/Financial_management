package access;
public class doctor
{
	String name,city,specification;
	int pin;
	public doctor(String name,String city,String specification,int pin)
	{
		this.name=name;
		this.city=city;
		this.specification=specification;
		this.pin=pin;
	}
	public void displaydoctor()
	{
		System.out.println("Name "+name);
		System.out.println("City "+city);
		System.out.println("Specification "+specification);
		System.out.println("Pin "+pin);
	}
}