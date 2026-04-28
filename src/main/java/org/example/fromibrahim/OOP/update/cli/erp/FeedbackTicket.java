package org.example.fromibrahim.OOP.update.cli.erp;

import java.util.UUID;

/**
 * Concrete ticket type for customer feedback.
 * Demonstrates method overriding and polymorphism.
 */
public class FeedbackTicket extends Ticket {

    private int rating;

    /**
     * Initializes a feedback ticket with the given comment and rating.
     * @param comment The feedback description
     * @param rating The customer rating (e.g., 1-5)
     */
    public FeedbackTicket(String comment, int rating) {
        super(comment);
        this.rating = rating;
    }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    /**
     * Private helper method to build the ID with "F-" prefix and UUID suffix.
     * This method is not exposed publicly (encapsulation).
     * @return Unique feedback ticket ID
     */
    private String buildPrefixedId() {
        return "F-" + UUID.randomUUID().toString();
    }
}
