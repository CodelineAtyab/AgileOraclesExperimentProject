package org.example.fromtibyan.sprint6.CLIERPOOP;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args){
        ArrayList<Ticket> tickets= new ArrayList<>();
        System.out.println("Tickets before: " + ComplaintTicket.getNumberOfTickets());

        Ticket c1 = new ComplaintTicket("C1","SLOW INTERNET");
        Ticket c2 = new ComplaintTicket("C2","DISCONNECTING FREQUENTLY");
        Ticket f1 = new FeedbackTicket("F1","KEEP IT UP!!");
        tickets.add(c1);
        tickets.add(c2);
        tickets.add(f1);

        System.out.println("Tickets after: " + ComplaintTicket.getNumberOfTickets());
    }
}
