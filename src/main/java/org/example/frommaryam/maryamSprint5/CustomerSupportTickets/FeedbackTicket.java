package org.example.frommaryam.maryamSprint5.CustomerSupportTickets;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be from 1 to 5");
        }

        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }
}

