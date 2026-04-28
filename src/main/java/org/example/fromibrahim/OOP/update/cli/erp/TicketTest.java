package org.example.fromibrahim.OOP.update.cli.erp;

import java.util.ArrayList;

public class TicketTest {

    private static final ArrayList<Ticket> customerTickets = new ArrayList<>();

    public static void main(String[] args) {

        String customerComplain = "My Internet keeps on disconnecting.";
        String typeOfComplain = "FREQUENT_DC";

        String customerFeedback = "Service can be made better!";
        int myRating = 2;

        // ComplaintTicket Objects
        Ticket compTicketOne = new ComplaintTicket(customerComplain);
        customerTickets.add(compTicketOne);
        System.out.println("Complaint Ticket 1 ID: " + compTicketOne.getId());

        Ticket compTicketTwo = new ComplaintTicket(customerComplain);
        customerTickets.add(compTicketTwo);
        System.out.println("Complaint Ticket 2 ID: " + compTicketTwo.getId());

        // FeedbackTicket Objects
        Ticket feedbackTicketOne = new FeedbackTicket(customerFeedback, myRating);
        customerTickets.add(feedbackTicketOne);
        System.out.println("Feedback Ticket 1 ID: " + feedbackTicketOne.getId());

        Ticket feedbackTicketTwo = new FeedbackTicket(customerFeedback, myRating);
        customerTickets.add(feedbackTicketTwo);
        System.out.println("Feedback Ticket 2 ID: " + feedbackTicketTwo.getId());


        System.out.println("\nTotal tickets created: " + customerTickets.size());
    }
}
