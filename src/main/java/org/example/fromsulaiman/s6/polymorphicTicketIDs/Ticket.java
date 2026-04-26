package org.example.fromsulaiman.s6.polymorphicTicketIDs;

import java.time.LocalDateTime;

public abstract class Ticket {

    protected String comment;
    protected LocalDateTime createdAt;

    public Ticket(String comment) {
        this.comment   = comment;
        this.createdAt = LocalDateTime.now();
    }

}
