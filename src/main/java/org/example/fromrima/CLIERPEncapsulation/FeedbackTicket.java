package org.example.fromrima.CLIERPEncapsulation;

public class FeedbackTicket extends Ticket {
    private final int rating;

    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5.");
        }
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    @Override
    public String toString() {
        return "[Feedback ] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", rating=" + rating;
    }
}
