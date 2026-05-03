package org.example.fromalharith.cliencapsulation;

public class Complaint extends Ticket {
    int severity;

    public Complaint(String message, String createdBy, int severity) {
        super(message, createdBy);
        this.severity = severity;
    }

    public void handle() {
        System.out.println("Handling complaint with severity " + severity);
    }

    @Override
    public String setId() {
        return "";
    }

    @Override
    public String setComment(String comments) {
        return "";
    }
}