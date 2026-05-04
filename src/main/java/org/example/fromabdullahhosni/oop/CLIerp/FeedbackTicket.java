package org.example.fromabdullahhosni.oop.CLIerp;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String comment, int rating) {
        super(comment);
        if (rating < 1 || rating > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5");
        }
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    // override - polymorphism
    @Override
    public String getId() {
        return buildPrefixedId();
    }

    private String buildPrefixedId() {
        return "F-" + java.util.UUID.randomUUID().toString();
    }
}