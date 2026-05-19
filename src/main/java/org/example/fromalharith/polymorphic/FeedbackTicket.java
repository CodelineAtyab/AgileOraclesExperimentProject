package org.example.fromalharith.polymorphic;

public class FeedbackTicket extends Ticket {
    private int rating;

    public FeedbackTicket(String message, String createdBy, int rating) {
        super(message, createdBy);
        this.rating = rating;
    }

    @Override
    public void process() {
        System.out.println("Recording feedback with rating " + rating);
    }

    @Override
    public String getDetails() {
        return "Feedback #" + getId() +
                " | Rating: " + rating +
                " | Message: " + getMessage();
    }
}