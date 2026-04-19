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

        System.out.println(ComplainTicket.getNoOfTicketCreated());

        ComplainTicket compTicketOne = new ComplainTicket();
        compTicketOne.id = "prem-01";
        compTicketOne.comment = customerComplain;
        compTicketOne.type = typeOfComplain;
        customerTickets.add(compTicketOne);

        ComplainTicket compTicketTwo = new ComplainTicket();
        compTicketOne.id = "prem-01";
        compTicketOne.comment = customerComplain;
        compTicketOne.type = typeOfComplain;
        customerTickets.add(compTicketOne);

        System.out.println(ComplainTicket.getNoOfTicketCreated());

        FeedbackTicket feedbackTicketOne = new FeedbackTicket();
        feedbackTicketOne.id = "prem-rate-01";
        feedbackTicketOne.comment = customerFeedback;
        feedbackTicketOne.rating = myRating;

        customerTickets.add(feedbackTicketOne);

//        Ticket someTicket = new Ticket();
//        someTicket.setId("12121");
//
//        ArrayList<Ticket> tickets = new ArrayList<>();
//        tickets.add(someTicket);
//        tickets.add(new Ticket());
//        tickets.add(new Ticket());
//        tickets.add(new Ticket());
//        tickets.add(new Ticket());
//        tickets.add(new Ticket());
//        tickets.add(new Ticket());

    }
}
