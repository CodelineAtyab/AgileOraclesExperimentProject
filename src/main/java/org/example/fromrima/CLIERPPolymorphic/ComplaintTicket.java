package org.example.fromrima.CLIERPPolymorphic;

public class ComplaintTicket extends Ticket{
    private static int counter = 1;
    private final String type;
    private final String id;
    public ComplaintTicket(String comment, String type) {
        super(comment);
        this.type = type;
        this.id = generateId();
    }
    @Override
    public String getId() {
        return id;
    }
    private String generateId() {
        return String.format("CT-%03d", counter++);
    }
    @Override
    public String toString() {
        return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", type=\"" + type + "\"";
    }
}
