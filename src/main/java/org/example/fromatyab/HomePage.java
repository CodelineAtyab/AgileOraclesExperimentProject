package org.example.fromatyab;

import java.util.ArrayList;

public class HomePage {
    private static final ArrayList<Ticket> customerTickets = new ArrayList<>();

    public static void main(String[] args) {
        Menu mainMenu = new Menu("Main", "Square");
        mainMenu.displayMenu();

        String customerComplain = "My Internet keeps on disconnecting.";
        String typeOfComplain = "FREQUENT_DC";

        String customerFeedback = "Service can be made better!";
        int myRating = 2;

        // ComplainTicket Objects
        Ticket compTicketOne = new ComplainTicket();
        compTicketOne.comment = customerComplain;
        customerTickets.add(compTicketOne);
        System.out.println(compTicketOne.getId());

        Ticket compTicketTwo = new ComplainTicket();
        compTicketOne.comment = customerComplain;
        customerTickets.add(compTicketOne);
        System.out.println(compTicketTwo.getId());

        // FeedbackTicket Objects
        Ticket feedbackTicketOne = new FeedbackTicket();
        feedbackTicketOne.comment = customerFeedback;
        System.out.println(feedbackTicketOne.getId());

        Ticket feedbackTicketTwo = new FeedbackTicket();
        feedbackTicketTwo.comment = customerFeedback;
        System.out.println(feedbackTicketOne.getId());

        customerTickets.add(feedbackTicketOne);


    }
}
