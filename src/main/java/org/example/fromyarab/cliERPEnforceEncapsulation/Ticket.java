package org.example.fromyarab.cliERPEnforceEncapsulation;

public abstract class Ticket {
    private static int numberOfComplaintTickets = 0;
    private static int numberOfFeedbackTickets = 0;

    private final String id;
    private final String comment;

    public Ticket(String prefix) {
        this.id = prefix + String.format("%03d", getNextId(prefix));
        this.comment = "";
    }

    public Ticket(String prefix, String comment) {
        this.id = prefix + String.format("%03d", getNextId(prefix));
        this.comment = comment;
    }

    private static int getNextId(String prefix) {
        if (prefix.equals("CT-")) {
            numberOfComplaintTickets++;
            return numberOfComplaintTickets;
        } else {
            numberOfFeedbackTickets++;
            return numberOfFeedbackTickets;
        }
    }

    public String getId() {
        return id;
    }

    public String getComment() {
        return comment;
    }

    public static int getNumberOfComplaintTickets() {
        return numberOfComplaintTickets;
    }

    @Override
    public String toString() {
        return "id=" + id + ", comment=\"" + comment + "\"";
    }
}