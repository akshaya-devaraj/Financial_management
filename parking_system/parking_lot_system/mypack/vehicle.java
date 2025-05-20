package mypack;
public class vehicle
{
	private String registration_num;
	private String color;
	private String vehicle_type;
	
	public vehicle(String registration_num,String color,String vehicle_type)
	{
		this.registration_num=registration_num;
		this.color=color;
		this.vehicle_type=vehicle_type;
	}
	
	public String getregistration_num()
	{
		return registration_num;
	}
	public String getcolor()
	{
		return color;
	}
	public String getvehicle_type()
	{
		return vehicle_type;
	}
}