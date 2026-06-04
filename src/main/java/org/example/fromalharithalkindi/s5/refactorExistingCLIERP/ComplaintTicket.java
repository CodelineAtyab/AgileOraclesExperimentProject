package org.example.fromalharithalkindi.s5.refactorExistingCLIERP;

public class ComplaintTicket extends Ticket {

    private final String type;

    public ComplaintTicket(String ticketID, String comment, String type) {
        super(ticketID, comment);
        this.type = type;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "[complaint] id = " + getTicketId() + "\n"
                + ", comment=\"" + getComment() + "\" \n"
                + ", type=\"" + type + "\"";
    }

}
