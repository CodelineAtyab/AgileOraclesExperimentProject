package org.example.fromkawther.sprint6.updating;

import java.time.LocalDateTime;

public abstract class Ticket {
    private String comment;
    private LocalDateTime createdAt;

    // Constructor for the parent class
    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }

    // Abstract method that children must implement
    public abstract String getId();

    public String getComment() {
        return comment;
    }
}