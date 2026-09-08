package org.example.fromalharith.polymorphic;

public abstract class Ticket {
    private static int counter = 0;

    private int id;
    private String message;
    private String createdBy;

    public Ticket(String message, String createdBy) {
        this.id = generateId();
        this.message = message;
        this.createdBy = createdBy;
    }

    private int generateId() {
        return ++counter;
    }

    public int getId() {
        return id;
    }

    public String getMessage() {
        return message;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public abstract void process();
    public abstract String getDetails();
}