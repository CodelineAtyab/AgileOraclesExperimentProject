package org.example.frommaryam.maryamSprint5.MiniHelpDeskModule;

import java.util.UUID;

public class FeedbackTicket extends Ticket {

    public FeedbackTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildId();
    }

    private String buildId() {
        return "F-" + UUID.randomUUID().toString();
    }
}
