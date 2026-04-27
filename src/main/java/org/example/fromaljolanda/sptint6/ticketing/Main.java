package org.example.fromaljolanda.sptint6.ticketing;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Creating tickets ---");

        ComplaintTicket c1 = new ComplaintTicket("CT-001", "Too loud", "Noise");

        ComplaintTicket c2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");

        FeedbackTicket f1 = new FeedbackTicket("FB-001", "Great app!", 5);

        tickets.add(c1);

        tickets.add(c2);

        tickets.add(f1);

        System.out.println("\nComplaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

    }
}
