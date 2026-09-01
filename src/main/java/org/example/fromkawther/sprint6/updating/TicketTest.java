package org.example.fromkawther.sprint6.updating;

import java.util.ArrayList;

public class TicketTest {
    public static void main(String[] args) {
        // Create ArrayList using the parent type
        ArrayList<Ticket> tickets = new ArrayList<>();

        // Adding objects with correct number of arguments
        tickets.add(new Complaint("Too loud", "Noise"));
        tickets.add(new Complaint("Too cold", "Air-con"));
        tickets.add(new Feedback("Great app!", 5));

        System.out.println("------------- Polymorphic Ticket List -------------");

        // Loop over the list using the abstract parent reference
        for (Ticket t : tickets) {
            // Java will call the correct getId() for each type
            System.out.println("Ticket ID: " + t.getId());
            System.out.println("Comment: " + t.getComment());
            System.out.println("---------------------------------------------");
        }
    }
}