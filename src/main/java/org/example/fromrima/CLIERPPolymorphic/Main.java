package org.example.fromrima.CLIERPPolymorphic;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // storing different subclasses in one Ticket list
        List<Ticket> tickets = new ArrayList<>();
        Ticket t1 = new ComplaintTicket("Too loud", "Noise");
        Ticket t2 = new ComplaintTicket("Too cold", "Air-con");
        Ticket t3 = new FeedbackTicket("Great app!", 5);
        tickets.add(t1);
        tickets.add(t2);
        tickets.add(t3);
        System.out.println("--- Ticket List ---");
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
            System.out.println("Generated ID: " + ticket.getId());
            System.out.println();
        }
    }
}