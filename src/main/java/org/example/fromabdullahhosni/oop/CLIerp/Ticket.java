package org.example.fromabdullahhosni.oop.CLIerp;

import java.time.LocalDateTime;

public abstract class Ticket {
    //private varriables - cannot be acces
    private LocalDateTime createdAt;
    private String comment;


    //constructor
    public Ticket(String comment) {
        this.createdAt = LocalDateTime.now();
        this.comment = comment;
    }

    public abstract String getId();

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public String getComment() {
        return comment;
    }
}