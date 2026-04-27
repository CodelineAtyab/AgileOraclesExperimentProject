package org.example.fromaljolanda.sptint6.ticketing;

public class FeedbackTicket extends Ticket {
    private int rating;

    // Constructor to create a new FeedbackTicket object
    public FeedbackTicket(String id, String comment, int rating) {
        super(id, comment);
        this.rating = rating;

        // Validate rating before assigning
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }
        System.out.println("FeedbackTicket " + id + " added.");
    }

    // Getter method to return rating
    public int getRating() {
        return rating;
    }

    // Override toString to display ticket details neatly
    @Override
    public String toString() {
        return "[Feedback] id = " + getId()
                + ", comment = \"" + getComment() + "\""
                + ", rating = \"" + getRating() + "\"" ;
    }
}
