package org.example.fromsafa.sprint6b;

import java.time.LocalDateTime;

public abstract class Ticket {

    private String comment;
    private LocalDateTime createdAt;

    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }

    public String getComment() {
        return comment;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public abstract String getId();
}
