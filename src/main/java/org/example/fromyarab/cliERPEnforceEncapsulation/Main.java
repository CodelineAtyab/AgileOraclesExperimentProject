package org.example.fromyarab.cliERPEnforceEncapsulation;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: " + Ticket.getNumberOfComplaintTickets());

        System.out.println("\n--- Creating tickets ---");
        tickets.add(new ComplaintTicket("Too loud", "Noise"));
        System.out.println("ComplaintTicket " + tickets.get(0).getId() + " added.");
        tickets.add(new ComplaintTicket("Too cold", "Air-con"));
        System.out.println("ComplaintTicket " + tickets.get(1).getId() + " added.");
        tickets.add(new FeedbackTicket("Great app!", 5));
        System.out.println("FeedbackTicket  " + tickets.get(2).getId() + " added.");

        System.out.println("\nComplaint tickets so far: " + Ticket.getNumberOfComplaintTickets());

        System.out.println("\n--- Ticket List ---");
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
        }
    }
}