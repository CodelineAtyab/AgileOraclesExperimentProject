package org.example.fromabdullahhosni.oop.CLIerp;

public class ComplaintTicket extends Ticket {
    private String type;
    private static int numberOfTickets = 0;

    public ComplaintTicket(String comment, String type) {
        super(comment);
        this.type = type;
        numberOfTickets++;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    public String getType() {
        return type;
    }

    // override - polymorphism
    @Override
    public String getId() {
        return buildPrefixedId();
    }

    private String buildPrefixedId() {
        return "C-" + java.util.UUID.randomUUID().toString();
    }
}