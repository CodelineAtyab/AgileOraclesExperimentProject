package org.example.frommaryam.maryamSprint5.CustomerSupportTickets;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println();
        System.out.println("Creating tickets");

        ComplaintTicket c1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        ComplaintTicket c2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        FeedbackTicket f1 = new FeedbackTicket("FB-001", "Great app!", 5);

        tickets.add(c1);
        tickets.add(c2);
        tickets.add(f1);

        System.out.println("ComplaintTicket " + c1.getId() + " added.");
        System.out.println("ComplaintTicket " + c2.getId() + " added.");
        System.out.println("FeedbackTicket " + f1.getId() + " added.");

        System.out.println();
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println();
        System.out.println("Ticket List");

        for (Ticket ticket : tickets) {
            if (ticket instanceof ComplaintTicket) {
                ComplaintTicket c = (ComplaintTicket) ticket;

                System.out.println("[Complaint] id=" + c.getId()
                        + ", comment=\"" + c.getComment() + "\","
                        + " type=\"" + c.getType() + "\"");

            } else if (ticket instanceof FeedbackTicket) {
                FeedbackTicket f = (FeedbackTicket) ticket;

                System.out.println("[Feedback ] id=" + f.getId()
                        + ", comment=\"" + f.getComment() + "\","
                        + " rating=" + f.getRating());
            }
        }
    }
}