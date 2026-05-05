package org.example.fromsaif.SPRINT6.UpdateCliErpPolymorphic;

import java.util.UUID;

public class FeedbackTicket extends Ticket {

    // Constructor passes the feedback comment to parent ticket class
    public FeedbackTicket (String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefix() + UUID.randomUUID(). toString();
    }

    private String buildPrefix() {
        return "F-" + getId();
    }
}
