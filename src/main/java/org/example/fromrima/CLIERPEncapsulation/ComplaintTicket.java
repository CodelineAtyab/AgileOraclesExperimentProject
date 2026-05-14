package org.example.fromrima.CLIERPEncapsulation;

public class ComplaintTicket extends Ticket {
    private static int numberOfTickets = 0;
    private final String type;

    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        if (type == null || type.isBlank()) {
            throw new IllegalArgumentException("Type cannot be empty.");
        }
        this.type = type;
        numberOfTickets++;
    }

    public String getType() {
        return type;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    @Override
    public String toString() {
        return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", type=\"" + type + "\"";
    }
}