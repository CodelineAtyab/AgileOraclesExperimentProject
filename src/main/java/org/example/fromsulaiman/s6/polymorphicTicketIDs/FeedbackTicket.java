package org.example.fromsulaiman.s6.polymorphicTicketIDs;

import java.util.UUID;

public class FeedbackTicket extends Ticket {

    public FeedbackTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return null;
    }

}
