package org.example.fromalharith.polymorphic;

public class ComplaintTicket extends Ticket {
    private int severity;

    public ComplaintTicket(String message, String createdBy, int severity) {
        super(message, createdBy);
        this.severity = severity;
    }

    @Override
    public void process() {
        System.out.println("Handling complaint with severity " + severity);
    }

    @Override
    public String getDetails() {
        return "Complaint #" + getId() +
                " | Severity: " + severity +
                " | Message: " + getMessage();
    }
}