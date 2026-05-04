package org.example.fromsafa.sprint6a;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        ArrayList<Ticket> tickets = new ArrayList<>();

        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println(" Creating tickets");

        ComplaintTicket t1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        ComplaintTicket t2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        FeedbackTicket t3 = new FeedbackTicket("FB-001", "Great app!", 5);

        tickets.add(t1);
        tickets.add(t2);
        tickets.add(t3);

        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("Ticket List");

        for (Ticket t : tickets) {

            if (t instanceof ComplaintTicket) {
                ComplaintTicket c = (ComplaintTicket) t;
                System.out.println("[Complaint] id=" + c.getId() + ", comment=\"" + c.getComment() + "\", type=\"" + c.getType() + "\"");
            } else if (t instanceof FeedbackTicket) {
                FeedbackTicket f = (FeedbackTicket) t;
                System.out.println("[Feedback ] id=" + f.getId() + ", comment=\"" + f.getComment() + "\", rating=" + f.getRating());
            }
        }
    }
}
