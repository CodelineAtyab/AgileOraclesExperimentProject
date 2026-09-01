package org.example.fromsulaiman.s6.refactorExistingCLIERP;
import java.util.ArrayList;

public class TicketDemo {

    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: "
                + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Creating tickets ---");

        ComplaintTicket t1 = new ComplaintTicket(
                "CT-001", "Too loud", "Noise");
        System.out.println("ComplaintTicket CT-001 added.");

        ComplaintTicket t2 = new ComplaintTicket(
                "CT-002", "Too cold", "Air-con");
        System.out.println("ComplaintTicket CT-002 added.");

        FeedbackTicket t3 = new FeedbackTicket(
                "FB-001", "Great app!", 5);
        System.out.println("FeedbackTicket FB-001 added.");

        tickets.add(t1);
        tickets.add(t2);
        tickets.add(t3);

        System.out.println("\nComplaint tickets so far: "
                + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Ticket List ---");

        for (Ticket t : tickets) {
            System.out.println(t);
        }
    }
}