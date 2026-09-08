package org.example.fromalharith.cliencapsulation;

public abstract class Feedback extends Ticket {
    int rating;

    public Feedback(String message, String createdBy, int rating) {
        super(message, createdBy);
        this.rating = rating;
    }

    public void handle() {
        System.out.println("Recording feedback with rating " + rating);
    }
}