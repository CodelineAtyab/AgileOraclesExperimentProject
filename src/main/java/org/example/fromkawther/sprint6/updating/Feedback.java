package org.example.fromkawther.sprint6.updating;
import java.util.UUID;

public class Feedback extends Ticket {

    public Feedback(String comment) {
        this.comment = comment;
    }

    @Override
    public String getId() {
        return buildPrefixedId("F-");
    }

    private String buildPrefixedId(String prefix) {
        return prefix + UUID.randomUUID().toString();
    }
}