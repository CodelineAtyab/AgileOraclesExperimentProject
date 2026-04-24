package org.example.fromkawther.sprint6.updating;
import java.util.UUID;

public class Complaint extends Ticket {

    public Complaint(String comment) {
        this.comment = comment;
    }

    @Override
    public String getId() {
        return buildPrefixedId("C-");
    }

    private String buildPrefixedId(String prefix) {
        return prefix + UUID.randomUUID().toString();
    }
}