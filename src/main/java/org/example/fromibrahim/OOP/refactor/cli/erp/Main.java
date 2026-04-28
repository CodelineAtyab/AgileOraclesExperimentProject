package org.example.fromibrahim.OOP.refactor.cli.erp;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        //  Step 1 : Show counter BEFORE any objects are created
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());   // static call

        System.out.println();
        System.out.println("--- Creating tickets ---");

        //  Step 2 : Create ticket objects
        ComplaintTicket ct1 = new ComplaintTicket("CT-001", "Too loud",  "Noise");
        System.out.println("ComplaintTicket " + ct1.getId() + " added.");

        ComplaintTicket ct2 = new ComplaintTicket("CT-002", "Too cold",  "Air-con");
        System.out.println("ComplaintTicket " + ct2.getId() + " added.");

        FeedbackTicket fb1 = new FeedbackTicket("FB-001", "Great app!", 5);
        System.out.println("FeedbackTicket  " + fb1.getId() + " added.");


        //  Step 3 : Show counter AFTER creation
        System.out.println();
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());


        //  Step 4 : Collect all tickets into one list

        //  ArrayList<Ticket> can store both subtypes because
        //  ComplaintTicket IS-A Ticket and FeedbackTicket IS-A Ticket.
        ArrayList<Ticket> tickets = new ArrayList<>();
        tickets.add(ct1);
        tickets.add(ct2);
        tickets.add(fb1);

        //  Step 5 : Print every ticket

        //  ticket.toString() is called automatically by println().
        //  Java decides AT RUNTIME which toString() to use —
        //  ComplaintTicket's or FeedbackTicket's.

        System.out.println();
        System.out.println("--- Ticket List ---");

        for (Ticket ticket : tickets) {
            System.out.println(ticket);   // calls the correct toString()
        }
    }
}