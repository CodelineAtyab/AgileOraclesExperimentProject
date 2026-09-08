package org.example.fromalharith.cliencapsulation;

public abstract class Ticket {
    int id;
    String message;
    String createdBy;

    static int counter = 0;

    public Ticket(String message, String createdBy) {
        counter++;
        id = counter;
        this.message = message;
        this.createdBy = createdBy;
    }

    public Ticket() {

    }

    public void display() {
        System.out.println("ID: " + id);
        System.out.println("Message: " + message);
        System.out.println("Created by: " + createdBy);
    }

    public abstract String setId();

    public abstract String setComment(String comments);
}