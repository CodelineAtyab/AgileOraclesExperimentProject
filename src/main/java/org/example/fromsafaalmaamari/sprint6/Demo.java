package org.example.fromsafaalmaamari.sprint6;
import java.util.ArrayList;

public class Demo {
    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint Ticket so far: " + ComplaintTicket.getNumberOfTickets());

        //Create objects
        Ticket ComplaintTicketOne = new ComplaintTicket("C001", "Weak Internet connection", "Technical");
        Ticket ComplaintTicketTwo = new ComplaintTicket("C002", "Late delivery", "Delivery");
        Ticket FeedbackOne = new FeedbackTicket("F001", "good service", 4);

        //Add the objects to tickets list
        tickets.add(ComplaintTicketOne);
        tickets.add(ComplaintTicketTwo);
        tickets.add(FeedbackOne);

        System.out.println("\n--- Creating tickets ---");
        System.out.println("ComplaintTicket " +ComplaintTicketOne.getId()+ " added.");
        System.out.println("ComplaintTicket " +ComplaintTicketTwo.getId()+ " added.");
        System.out.println("FeedbackTicket  " +FeedbackOne.getId()+ " added.");

        //Print counter After creation
        System.out.println("\nComplaint Ticket so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Ticket List ---");

        for (Ticket t : tickets) {
            System.out.println(t);
        }
    }
}