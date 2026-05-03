package org.example.frommaryam.maryamSprint5.MiniHelpDeskModule;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();

        Ticket t1 = new ComplaintTicket("Too loud");
        Ticket t2 = new FeedbackTicket("Great app!");

        tickets.add(t1);
        tickets.add(t2);

        for (int i = 0; i < tickets.size(); i++) {
            System.out.println(tickets.get(i).getId());
            System.out.println(tickets.get(i).getComment());
            System.out.println(tickets.get(i).getCreatedAt());
            System.out.println();
        }
    }
}