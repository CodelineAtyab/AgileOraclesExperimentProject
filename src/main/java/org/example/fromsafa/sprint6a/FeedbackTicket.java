package org.example.fromsafa.sprint6a;

public class FeedbackTicket extends Ticket {

    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);

        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException();
        }

        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }
}
