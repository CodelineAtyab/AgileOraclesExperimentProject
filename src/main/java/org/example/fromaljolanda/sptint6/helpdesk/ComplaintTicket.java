package org.example.fromaljolanda.sptint6.helpdesk;

import java.util.UUID;

public class ComplaintTicket extends Ticket {

    public ComplaintTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId("C-");
    }

    // Private helper (Encapsulation)
    private String buildPrefixedId(String prefix) {
        return prefix + UUID.randomUUID().toString();
    }
}
