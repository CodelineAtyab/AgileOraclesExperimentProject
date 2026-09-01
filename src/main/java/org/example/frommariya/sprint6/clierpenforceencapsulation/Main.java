package org.example.frommariya.sprint6.clierpenforceencapsulation;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args){
        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: "+ComplaintTicket.getNumOfTickets());

        System.out.println("--- Creating tickets ---");

        ComplaintTicket complaintTicket1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        tickets.add(complaintTicket1);
        System.out.println("ComplaintTicket CT-001 added.");


        ComplaintTicket complaintTicket2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        tickets.add(complaintTicket2);
        System.out.println("ComplaintTicket CT-002 added.");


        FeedbackTicket FeedbackTicket1 = new FeedbackTicket("FB-001", "Great app!", 5);
        tickets.add(FeedbackTicket1);
        System.out.println("FeedbackTicket1 FB-001 added.");

        System.out.println("Complaint tickets so far:" +ComplaintTicket.getNumOfTickets());

        System.out.println("--- Ticket List ---");
        for(Ticket ticket: tickets){
            System.out.println(ticket);
        }
    }
}
