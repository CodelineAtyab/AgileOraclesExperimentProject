package org.example.fromabdullahhosni.oop.CLIerp;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        //Arraylist
        ArrayList<Ticket> tickets = new ArrayList<>();

        //print counter Before Adding elements
        System.out.println("ComplaintTicket counter before creation: " + ComplaintTicket.getNumberOfTickets());
        System.out.println();

        //creating opbjects
        System.out.println("---Creating tickets---");
        Ticket c1 = new ComplaintTicket("C001", "Slow service", "Service");
        Ticket c2 = new ComplaintTicket("C002", "Wrong order", "Order");
        Ticket f1 = new FeedbackTicket("F001", "Great experience!", 5);

        tickets.add(c1);
        tickets.add(c2);
        tickets.add(f1);

        for (Ticket t : tickets) {
            System.out.println("ID: " + t.getId() + ", Comment: " + t.getComment());
            if (t instanceof ComplaintTicket) {
                System.out.println("Type: " + ((ComplaintTicket) t).getType());
            } else if (t instanceof FeedbackTicket) {
                System.out.println("Rating: " + ((FeedbackTicket) t).getRating());
            }
        }
        System.out.println();

        //print counter After Adding elements
        System.out.print("ComplaintTicket counter after creation: " + ComplaintTicket.getNumberOfTickets());
    }
}
