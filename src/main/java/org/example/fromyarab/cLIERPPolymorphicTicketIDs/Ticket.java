package org.example.fromyarab.cLIERPPolymorphicTicketIDs;

public abstract class Ticket {
    private String description;
    private String createdBy;
    private static int ticketCounter = 0;

    public Ticket(String description, String createdBy) {
        this.description = description;
        this.createdBy = createdBy;
        ticketCounter++;
    }

    public String getDescription() {
        return description;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public abstract String getId();

    public static int getTicketCount() {
        return ticketCounter;
    }

    protected String formatId(String prefix) {
        return prefix + "-" + String.format("%04d", ticketCounter);
    }
}