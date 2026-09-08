package org.example.fromaljolanda.sprint6.helpdesk;

import java.util.UUID;

public class FeedbackTicket extends Ticket {

    public FeedbackTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId("F-");
    }

    // Private helper (Encapsulation)
    private String buildPrefixedId(String prefix) {
        return prefix + UUID.randomUUID().toString();
    }
}
