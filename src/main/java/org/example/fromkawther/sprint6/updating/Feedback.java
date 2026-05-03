package org.example.fromkawther.sprint6.updating;
import java.util.UUID;

public class Feedback extends Ticket {
    private int rating; // class-specific field

    // Constructor matches the Main usage: new Feedback("Great app!", 5)
    public Feedback(String comment, int rating) {
        super(comment);
        this.rating = rating;
    }

    @Override
    public String getId() {
        return createId();
    }

    // Private helper method
    private String createId() {
        return "F-" + UUID.randomUUID().toString();
    }
}