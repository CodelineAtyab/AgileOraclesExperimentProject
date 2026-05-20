package org.example.fromsafa.sprint6b;
import java.util.UUID;

public class FeedbackTicket extends Ticket {

    public FeedbackTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    private String buildPrefixedId() {
        return "F-" + UUID.randomUUID().toString();
    }
}
