package org.example.fromabdullahhosni.oop.CLIerp;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("ComplaintTicket counter before creation: " + ComplaintTicket.getNumberOfTickets());
        System.out.println();

        //creating tickets
        System.out.println("---Creating tickets---");
        tickets.add(new ComplaintTicket("Slow service", "Service"));
        tickets.add(new ComplaintTicket("Wrong order", "Order"));
        tickets.add(new FeedbackTicket("Great experience!", 5));

        for (Ticket t : tickets) {
            System.out.println("ID: " + t.getId() + ", Comment: " + t.getComment() + ", Created: " + t.getCreatedAt());
        }
        System.out.println();

        System.out.print("ComplaintTicket counter after creation: " + ComplaintTicket.getNumberOfTickets());
    }
}