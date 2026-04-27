package org.example.fromsulaiman.s6.polymorphicTicketIDs;

import java.util.UUID;

public class ComplaintTicket extends Ticket {
    public ComplaintTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    private String buildPrefixedId() {
        return "C-" + UUID.randomUUID().toString();
    }

}
