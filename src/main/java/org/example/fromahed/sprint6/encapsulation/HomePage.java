package org.example.fromahed.sprint6.encapsulation;

import java.util.ArrayList;

public class HomePage {
    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();
        //before create
        System.out.println("Complaint count before: " + ComplainTicket.getNumberOfTicket());
        System.out.println("\n-------Creating tickets-------");

        //create tickets
        Ticket t1 = new ComplainTicket("Too loud", "Noise ");
        System.out.println("ComplainTicket" + t1.getId() + "   added.");

        Ticket t2 = new ComplainTicket("Too cold", "Air-con");
        System.out.println("ComplainTicket" + t2.getId() + "   added.");

        Ticket t3 = new FeedbackTicket("Great app!", 5);
        System.out.println("FeedbackTicket" + t3.getId() + "   added.");

        //add to list
        tickets.add(t1);
        tickets.add(t2);
        tickets.add(t3);

        //after create
        System.out.println("\nComplaint count after: " + ComplainTicket.getNumberOfTicket());
        System.out.println("\n-------Tickets List-------");

        //print
        for (int i = 0; i < tickets.size(); i++) {
            Ticket t = tickets.get(i);
            System.out.println(t);
        }
    }
}


