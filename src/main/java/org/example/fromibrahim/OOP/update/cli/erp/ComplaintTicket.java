package org.example.fromibrahim.OOP.update.cli.erp;

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
