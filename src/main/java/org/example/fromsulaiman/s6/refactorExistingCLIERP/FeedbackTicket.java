package org.example.fromsulaiman.s6.refactorExistingCLIERP;

public class FeedbackTicket extends Ticket {

    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }

        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }
        this.rating = rating;
    }
}