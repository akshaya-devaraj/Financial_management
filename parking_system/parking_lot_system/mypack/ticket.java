package mypack;
import java.util.*;

public class ticket 
{
    private parking lot;
    public ticket(parking lot) 
    {
        this.lot = lot;
    }
    public String park(vehicle v) 
    {
        for(List<pslot> floor:lot.getfloors()) 
        {
            for(pslot slot:floor) 
            {
                if (slot.gettype().toString().equalsIgnoreCase(v.getvehicle_type()) && slot.isAvailable()) 
                {
                    slot.parked_vehicle_details(v);
                    return"PR"+ lot.getparkingid()+"_" +slot.getfloor()+"_"+slot.getslot_num();
                }
            }
        }
        return "No available slot for vehicle type: "+v.getvehicle_type();
    }

    public String unpark(String ticketId) {
        try {
            String[] parts=ticketId.split("_");
            String pid=parts[0].substring(2); 
            int floor=Integer.parseInt(parts[1]);
            int slotNum=Integer.parseInt(parts[2]);
            if(!lot.getparkingid().equals(pid)) return "Invalid parking lot ID.";
            pslot targetSlot=lot.getfloors().get(floor-1).get(slotNum-1);
            targetSlot.unpark_vehicle();
             return "Unparked vehicle  from Floor "+floor+", Slot "+slotNum;
        } catch(Exception e) 
        {
            return "Invalid ticket format!";
        }
    }

    public void displayAvailableSlots(String type) {
        System.out.println("Available slots for vehicle type: " + type);
        for(int i=0;i<lot.getnum_floors();i++) {
            System.out.print("Floor "+ (i + 1)+ ": ");
            for (pslot slot:lot.getfloors().get(i)) 
            {
                if (slot.gettype().toString().equalsIgnoreCase(type) && slot.isAvailable()) {
                    System.out.print(slot.getslot_num()+ " ");
                }
            }
            System.out.println();
        }
    }

    public void displayOccupiedSlots(String type) {
        System.out.println("Occupied slots for vehicle type: " + type);
        for (int i=0; i<lot.getnum_floors();i++) {
            System.out.print("Floor "+(i+1)+ ": ");
            for (pslot slot:lot.getfloors().get(i)) {
                if (slot.gettype().toString().equalsIgnoreCase(type) && !slot.isAvailable()) {
                    System.out.print(slot.getslot_num()+ " ");
                }
            }
            System.out.println();
        }
    }
}
