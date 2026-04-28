package org.example.fromibrahim.OOP.update.cli.erp;

import java.util.UUID;

public class FeedbackTicket extends Ticket {

    private int rating;

    public FeedbackTicket(String comment, int rating) {
        super(comment);
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    private String buildPrefixedId() {
        return "F-" + UUID.randomUUID().toString();
    }
}
