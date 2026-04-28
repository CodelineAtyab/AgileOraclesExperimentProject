package org.example.fromibrahim.OOP.update.cli.erp;

import java.time.LocalDateTime;

/**
 * Abstract base class for all help-desk ticket types.
 * Enforces polymorphism via the abstract getId() method
 * and provides common fields for all ticket subtypes.
 */
public abstract class Ticket {
    private String comment;
    private LocalDateTime createdAt;

    /**
     * Initializes a ticket with a comment and sets creation time to now.
     * @param comment The ticket's description/comment
     */
    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }

    /**
     * Abstract method to generate a unique, class-specific ticket ID.
     * Must be overridden by concrete subclasses.
     * @return Unique ticket ID string
     */
    public abstract String getId();

    // Encapsulated field accessors
    public String getComment() { return comment; }
    public void setComment(String comment) { this.comment = comment; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}
