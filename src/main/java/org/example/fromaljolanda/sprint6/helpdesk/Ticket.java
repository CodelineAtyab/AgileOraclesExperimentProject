package org.example.fromaljolanda.sprint6.helpdesk;

import java.time.LocalDateTime;

public abstract class Ticket {
    public String comment;
    public LocalDateTime createdAt;

    // Constructor
    public Ticket(String comment) {
        this.comment = comment;
    }

    // Abstract method
    public abstract String getId();
}
