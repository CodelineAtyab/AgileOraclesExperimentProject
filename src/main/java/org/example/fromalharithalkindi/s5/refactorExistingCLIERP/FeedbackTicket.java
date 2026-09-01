package org.example.fromalharithalkindi.s5.refactorExistingCLIERP;

public class FeedbackTicket extends Ticket {

    private final int rating;   // Must be 1–5

    public FeedbackTicket(String ticketId, String comment, int rating) {
        super(ticketId, comment);

        // Validation — throw an error immediately if rating is invalid
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException(
                    "Rating must be between 1 and 5, but got: " + rating
            );
        }
        this.rating = rating;
    }

    public int getRating() { return rating; }

    @Override
    public String toString() {
        return "[Feedback ] id=" + getTicketId()
                + ", comment=\"" + getComment() + "\""
                + ", rating=" + rating;
    }
}