package org.example.fromsaif.SPRINT6.UpdateCliErpPolymorphic;

import java.time.LocalDateTime;

public abstract class Ticket {

    private String comment;

    // Stores the date and time when the ticket was created.
    private LocalDateTime createdAt;

    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }

    // Returns ticket comment
    public String getComment() {
        return comment;
    }

    // Returns when the ticket was created.
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    // Each child class must create its own ID format.
    public abstract String getId();
}
