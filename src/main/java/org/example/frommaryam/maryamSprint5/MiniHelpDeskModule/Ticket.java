package org.example.frommaryam.maryamSprint5.MiniHelpDeskModule;

import java.time.LocalDateTime;

public abstract class Ticket {
    private String comment;
    private LocalDateTime createdAt;

    public Ticket(String comment) {
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
    }
}