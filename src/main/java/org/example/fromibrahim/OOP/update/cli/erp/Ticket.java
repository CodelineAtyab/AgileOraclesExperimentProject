package org.example.fromibrahim.OOP.update.cli.erp;

import java.time.LocalDateTime;

public abstract class Ticket {

    private String comment;
    private LocalDateTime createdAt;

    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }

    public abstract String getId();

    // Encapsulated field accessors
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}