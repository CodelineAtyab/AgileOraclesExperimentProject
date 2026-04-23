package org.example.fromkhadija.sprint6;

import java.time.LocalDateTime;

//Abstract Parent Class
public abstract class Ticket {

    private String comment;
    private LocalDateTime createdAt;

    public Ticket(String comment, LocalDateTime createdAt) {
        this.comment = comment;
        this.createdAt = createdAt;
    }

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

    // Declare abstract method String getId()
    public abstract String getId();

    // I use abstract here to force subclass to implement it as special format for their own purpose
    public abstract String toString();
}