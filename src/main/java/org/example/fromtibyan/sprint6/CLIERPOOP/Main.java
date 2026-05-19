package org.example.fromtibyan.sprint6.CLIERPOOP;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args){
        ArrayList<Ticket> tickets= new ArrayList<>();
        System.out.println("Complaint tickets before: " + ComplaintTicket.getNumberOfTickets());

        Ticket c1 = new ComplaintTicket("C1","SLOW INTERNET","CONNECTION SPEED");
        Ticket c2 = new ComplaintTicket("C2","DISCONNECTING FREQUENTLY", "NETWORK ISSUE");
        Ticket f1 = new FeedbackTicket("F1","KEEP IT UP!!",3);
        tickets.add(c1);
        tickets.add(c2);
        tickets.add(f1);

        System.out.println("complaint tickets after: " + ComplaintTicket.getNumberOfTickets());
System.out.println("-------TICKETS---------");
        for (Ticket list: tickets){
            System.out.println("ID: " + list.getId() +"\nCOMMENT: "+ list.getComment());
            if (list instanceof ComplaintTicket complaint) {
                System.out.println("TYPE: " + complaint.getType());
            } else if (list instanceof FeedbackTicket feedback) {
                System.out.println("RATING: " + feedback.getRating());
            }
            System.out.println("----------------------");

        }
    }
}
