package org.example.fromsulaiman.s6.polymorphicTicketIDs;

public class ComplaintTicket extends Ticket {
    public ComplaintTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return null;
    }
}
