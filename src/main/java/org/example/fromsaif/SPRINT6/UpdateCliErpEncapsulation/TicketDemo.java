package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

import java.util.ArrayList;

public class TicketDemo {
    public static void main(String[] args) {

        // ArrayList stores all ticket types using the parent type Ticket.
        ArrayList<Ticket> tickets = new ArrayList<>();

        // At the beginning, no ComplaintTicket objects have been created yet.
        System.out.println("Complaint tickets: " + ComplaintTicket.getNumberOfTickets());
        System.out.println("--- Creating tickets ---");

        // Create complaint tickets.
        ComplaintTicket complaintOne = new ComplaintTicket("CT-001", "Wifi not connection", "Payment");
        ComplaintTicket complaintTwo = new ComplaintTicket("CT-002", "Wifi is very slow", "Network");

        // Create feedback ticket.
        FeedbackTicket feedbackOne = new FeedbackTicket("FB-001", "Staff did amazing job", 5);

        // Add all tickets to the same list.
        tickets.add(complaintOne);
        tickets.add(complaintTwo);
        tickets.add(feedbackOne);

        System.out.println("ComplaintTicket " + complaintOne.getId() + " added.");
        System.out.println("ComplaintTicket " + complaintTwo.getId() + " added.");
        System.out.println("FeedbackTicket " + feedbackOne.getId() + " added.");

        // The complaint counter should now be 2 because two ComplaintTicket objects were created.
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());

        System.out.println("--- Ticket List ---");

        // Print each ticket in the list.
        for (Ticket ticket : tickets) {
            if (ticket instanceof ComplaintTicket complaintTicket) {
                System.out.println("[Complaint] id=" + complaintTicket.getId()
                        + ", comment=\"" + complaintTicket.getComment()
                        + "\", type=\"" + complaintTicket.getType() + "\"");

            }
            else if (ticket instanceof FeedbackTicket feedbackTicket) {
                System.out.println("[Feedback ] id=" + feedbackTicket.getId()
                        + ", comment=\"" + feedbackTicket.getComment()
                        + "\", rating=" + feedbackTicket.getRating());

            }
        }
    }
}
