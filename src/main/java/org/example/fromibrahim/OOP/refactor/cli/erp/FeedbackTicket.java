package org.example.fromibrahim.OOP.refactor.cli.erp;

public class FeedbackTicket extends Ticket {


    private int rating;

    //  Constructor
    public FeedbackTicket(String id, String comment, int rating) {

        // Always call super() first to initialise inherited fields
        super(id, comment);

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException(
                    "Rating must be between 1 and 5. Received: " + rating
            );
        }

        this.rating = rating;
    }

    //  Getter
    public int getRating() {
        return rating;
    }

    //  toString()  : overrides Object.toString() for clean printing
    @Override
    public String toString() {
        // getId() and getComment() are inherited from Ticket
        return "[Feedback ] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", rating="    + rating;
    }

}