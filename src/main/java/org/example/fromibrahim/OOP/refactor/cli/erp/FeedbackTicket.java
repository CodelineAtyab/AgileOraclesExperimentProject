package org.example.fromibrahim.OOP.refactor.cli.erp;

public class FeedbackTicket extends Ticket {


    private int rating;

    //  Constructor
    public FeedbackTicket(String id, String comment, int rating) {

        // Always call super() first to initialise inherited fields
        super(id, comment);
    }
}
