package org.example.fromyarab.cliERPEnforceEncapsulation;

public final class ComplaintTicket extends Ticket {
    private final String type;

    public ComplaintTicket(String comment, String type) {
        super("CT-", comment);
        this.type = type;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\",     type=\"" + type + "\"";
    }
}