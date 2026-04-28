package org.example.fromibrahim.OOP.update.cli.erp;

import java.util.UUID;

/**
 * Concrete ticket type for customer complaints.
 * Demonstrates method overriding and polymorphism.
 */
public class ComplaintTicket extends Ticket {

    /**
     * Initializes a complaint ticket with the given comment.
     * @param comment The complaint description
     */
    public ComplaintTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    /**
     * Private helper method to build the ID with "C-" prefix and UUID suffix.
     * This method is not exposed publicly (encapsulation).
     * @return Unique complaint ticket ID
     */
    private String buildPrefixedId() {
        return "C-" + UUID.randomUUID().toString();
    }
}
