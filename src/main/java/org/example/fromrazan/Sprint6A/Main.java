package org.example.fromrazan.Sprint6A;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();


        System.out.println("Complaint tickets so far: " + ComplaintTicket.getCount());


        System.out.println("-----Creating Ticket--");

        tickets.add(new ComplaintTicket("Too loud", "Noise"));
        tickets.add(new ComplaintTicket("Too cold", "Air=con"));
        tickets.add(new Feedback("Great apps!", 4));


        System.out.println("Complaint tickets so far: " + ComplaintTicket.getCount());

        System.out.println("    Ticket list    ");

        for (Ticket t : tickets) {
            System.out.println(t);
        }
    }
}

