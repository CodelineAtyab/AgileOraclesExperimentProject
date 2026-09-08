package org.example.fromrima.CLIERPEncapsulation;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Ticket> tickets = new ArrayList<>();
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Creating tickets ---");

        ComplaintTicket c1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        tickets.add(c1);
        System.out.println("ComplaintTicket CT-001 added.");

        ComplaintTicket c2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        tickets.add(c2);
        System.out.println("ComplaintTicket CT-002 added.");

        FeedbackTicket f1 = new FeedbackTicket("FB-001", "Great app!", 5);
        tickets.add(f1);
        System.out.println("FeedbackTicket  FB-001 added.");

        System.out.println("\nComplaint tickets so far: " + ComplaintTicket.getNumberOfTickets());
        System.out.println("\n--- Ticket List ---");
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
        }
    }
}