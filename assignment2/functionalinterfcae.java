@FunctionalInterface
interface patient
{
	public void disease();
	//only one abstract method should be present inside a interface
	//so that it is called as functional interface
}
class functionalinterfcae implements patient
{
	@Override
	public void disease()
	{
		System.out.println("Name of the disease is flu");
	}
	public static void main(String[]args)
	{
		functionalinterfcae obj=new functionalinterfcae();
		obj.disease();
	}
} 