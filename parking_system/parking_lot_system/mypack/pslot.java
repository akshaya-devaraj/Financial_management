package mypack;
import java.util.*;
public class pslot
{
	private int floor;
	private int slot_num;
	private boolean isOccupied;
	private slotType type;
	private vehicle vehicleparked;
	
	public pslot(int floor,int slot_num,slotType type)
	{
		this.floor=floor;
		this.slot_num=slot_num;
		this.type=type;
		this.isOccupied = false;
		this.vehicleparked=null;
	}
	public boolean isAvailable()
	{
		return !isOccupied;
	}
	public slotType gettype()
	{
		return type;
	}
	public int getfloor()
	{
		return floor;
	}
	public int getslot_num()
	{
		return slot_num;
	}
	public void parked_vehicle_details(vehicle ve)
	{
		this.vehicleparked=ve;
		this.isOccupied=true;
	}
	public void unpark_vehicle()
	{
		this.vehicleparked=null;
		this.isOccupied=false;
	}
	public vehicle getvehicleparked()
	{
		return vehicleparked;
	}
}