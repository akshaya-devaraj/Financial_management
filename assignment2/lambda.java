interface doctor
{
	public void name();
}
interface patient
{
	public void name();
}
class lambda
{
	public static void main(String[]args)
	{
		new doctor()
		{
			@Override
			public void name()
			{
				System.out.println("Name of the doctor is sham");
			}
		}
		.name();
		new patient()
		{
			@Override
			public void name()
			{
				System.out.println("Name of the patient is dharshini");
			}
		}
		.name();
	}
}