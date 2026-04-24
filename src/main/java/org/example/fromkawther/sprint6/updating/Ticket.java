package org.example.fromkawther.sprint6.updating;

import java.time.LocalDateTime;

public abstract class Ticket {
    protected String comment;
    protected LocalDateTime createdAt = LocalDateTime.now();
    public abstract String getId();
}