class college
{
	private String c_name;
	private int c_roll;
	private String c_location;
	public void setc_name(String c_name)
	{
		this.c_name=c_name;
	}
	public void setc_roll(int c_roll)
	{
		this.c_roll=c_roll;
	}
	public void setc_location(String c_location)
	{
		this.c_location=c_location;
	}
	public String getc_name()
	{
		return c_name;
	}
	public int getc_roll()
	{
		return c_roll;
	}
	public String getc_location()
	{
		return c_location;
	}
}
class encapsulation
{
	public static void main(String[]args)
	{
		college obj =new college();
		obj.setc_name("shakthi");
		obj.setc_roll(2727);
		obj.setc_location("cbe");
		System.out.println(obj.getc_name());
		System.out.println(obj.getc_roll());
		System.out.println(obj.getc_location());
	}
}
		