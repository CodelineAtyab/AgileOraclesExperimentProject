package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

public class FeedbackTicket extends Ticket {

    // Stores the feedback rating
    private int rating;

    // Constructor passes the feedback comment to parent ticket class
    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        setRating(rating);
    }

    // Returns the feedback rating
    public int getRating() {
        return rating;
    }

    // Updates the feedback rating
    public void setRating(int rating) {
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5.");
        }
        this.rating = rating;
    }
}
