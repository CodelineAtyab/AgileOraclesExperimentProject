package org.example.fromaljolanda.sptint6.ticketing;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        // Create a list to store all tickets
        ArrayList<Ticket> tickets = new ArrayList<>();

        // Print number of complaint tickets before creating any objects
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Creating tickets ---");

        // Create complaint ticket objects
        ComplaintTicket c1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        ComplaintTicket c2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");

        // Create feedback ticket object
        FeedbackTicket f1 = new FeedbackTicket("FB-001", "Great app!", 5);

        // Add all tickets to the list
        tickets.add(c1);
        tickets.add(c2);
        tickets.add(f1);

        // Print number of complaint tickets after creation
        System.out.println("\nComplaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("\n--- Ticket List ---");

        // Loop through tickets and print each one (polymorphism in action)
        for (Ticket t : tickets) {
            System.out.println(t);
        }
    }
}
