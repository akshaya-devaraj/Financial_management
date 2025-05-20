package mypack;
import java.util.*;
public class parking
{
    private String parkingid;
    private int num_floors;
    private int slots_per_floor;
    private List<List<pslot>> floors;

    public parking(String parkingid,int num_floors,int slots_per_floor)
    {
        this.parkingid=parkingid;
        this.num_floors=num_floors;
        this.slots_per_floor=slots_per_floor;
        this.floors=new ArrayList<>();

        for(int f=1;f<=num_floors;f++)
        {
            List<pslot> floorslots =new ArrayList<>();
            for(int s=1;s<=slots_per_floor;s++)
            {
                slotType type;
                if(s==1)
                {
                    type=slotType.Truck;
                }
                else if(s==2||s==3)
                {
                    type=slotType.Bike;
                }
                else
                {
                    type=slotType.Car;
                }
                floorslots.add(new pslot(f,s,type));
            }
            floors.add(floorslots);
        }
    }
    public String getparkingid() 
    {
        return parkingid;
    }
    
    public int getnum_floors() 
    {
        return num_floors;
    }
    
    public int slots_per_floor() 
    {
        return slots_per_floor;
    }
    
    public List<List<pslot>> getfloors() 
    {
        return floors;
    }
}