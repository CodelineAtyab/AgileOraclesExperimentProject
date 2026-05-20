package org.example.fromkawther.sprint6.updating;

import java.util.UUID;

public class Complaint extends Ticket {
    private String type; // class-specific field

    // Constructor matches the Main usage: new Complaint("Too loud", "Noise")
    public Complaint(String comment, String type) {
        super(comment);
        this.type = type;
    }

    @Override
    public String getId() {
        return buildId();
    }

    // Private helper method
    private String buildId() {
        return "C-" + UUID.randomUUID().toString();
    }
}