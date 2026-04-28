package org.example.fromibrahim.OOP.update.cli.erp;

import java.util.ArrayList;

/**
 * Driver class demonstrating runtime polymorphism with Ticket subclasses.
 * Uses Ticket references to interact with different concrete ticket types.
 */
public class TicketTest {

    private static final ArrayList<Ticket> customerTickets = new ArrayList<>();

    public static void main(String[] args) {

        String customerComplain = "My Internet keeps on disconnecting.";
        String typeOfComplain = "FREQUENT_DC";

        String customerFeedback = "Service can be made better!";
        int myRating = 2;

        // ComplaintTicket Objects - using Ticket reference (polymorphism)
        Ticket compTicketOne = new ComplaintTicket(customerComplain);
        customerTickets.add(compTicketOne);
        System.out.println("Complaint Ticket 1 ID: " + compTicketOne.getId());

        Ticket compTicketTwo = new ComplaintTicket(customerComplain);
        customerTickets.add(compTicketTwo);
        System.out.println("Complaint Ticket 2 ID: " + compTicketTwo.getId());

        // FeedbackTicket Objects - using Ticket reference (polymorphism)
        Ticket feedbackTicketOne = new FeedbackTicket(customerFeedback, myRating);
        customerTickets.add(feedbackTicketOne);
        System.out.println("Feedback Ticket 1 ID: " + feedbackTicketOne.getId());

        Ticket feedbackTicketTwo = new FeedbackTicket(customerFeedback, myRating);
        customerTickets.add(feedbackTicketTwo);
        System.out.println("Feedback Ticket 2 ID: " + feedbackTicketTwo.getId());

        // Verify unique IDs and correct prefixes
        System.out.println("\nTotal tickets created: " + customerTickets.size());
    }
}
