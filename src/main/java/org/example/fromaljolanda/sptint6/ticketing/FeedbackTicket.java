package org.example.fromaljolanda.sptint6.ticketing;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        this.rating = rating;
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }
        System.out.println("FeedbackTicket " + id + "added ..");
    }

    public int getRating() {
        return rating;
    }

    @Override
    public String toString() {
        return "[Feedback] id = " + getId()
                + ", comment = \"" + getComment() + "\""
                + ", rating = \"" + getRating() + "\"" ;
    }
}
