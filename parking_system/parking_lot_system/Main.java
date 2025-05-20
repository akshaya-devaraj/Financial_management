import mypack.vehicle;
import mypack.slotType;
import mypack.pslot;
import mypack.parking;
import mypack.ticket;
import java.util.Scanner;                                                                        
public class Main
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        System.out.println("Welcome to Smart Parking System!");

        System.out.print("Enter Parking ID: ");
        String id=sc.nextLine();

        System.out.print("Enter number of floors: ");
        int floors=sc.nextInt();

        System.out.print("Enter slots per floor: ");
        int slots=sc.nextInt();
        sc.nextLine(); 

        parking lot=new parking(id, floors, slots);
        ticket ticketService=new ticket(lot);

        while(true) {
            System.out.println("\nChoose an action:");
            System.out.println("1. Park Vehicle");
            System.out.println("2. Unpark Vehicle (by Ticket)");
            System.out.println("3. Display Available Slots (by Vehicle Type)");
            System.out.println("4. Display Occupied Slots (by Vehicle Type)");
            System.out.println("5. Exit");

            int choice=sc.nextInt();
            sc.nextLine(); 

            switch (choice) {
                case 1:
                    System.out.print("Enter Registration Number: ");
                    String reg=sc.nextLine();

                    System.out.print("Enter Color: ");
                    String color=sc.nextLine();

                    System.out.print("Enter Vehicle Type: ");
                    String type=sc.nextLine();

                    vehicle v=new vehicle(reg, color, type);
                    String parkMsg=ticketService.park(v);
                    System.out.println("Ticket Issued: " + parkMsg);
                    break;

                case 2:
                    System.out.print("Enter Ticket ID to Unpark ");
                    String ticketId=sc.nextLine();
                    String unparkMsg=ticketService.unpark(ticketId);
                    System.out.println(unparkMsg);
                    break;

                case 3:
                    System.out.print("Enter Vehicle Type  ");
                    String availType=sc.nextLine();
                    ticketService.displayAvailableSlots(availType);
                    break;

                case 4:
                    System.out.print("Enter Vehicle Type ");
                    String occType=sc.nextLine();
                    ticketService.displayOccupiedSlots(occType);
                    break;

                case 5:
                    System.out.println("Exiting system. Thank you!");
                    return;

                default:
                    System.out.println("Invalid choice. Try again.");
            }
        }
    }
}
