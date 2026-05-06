package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

import org.example.fromsaif.SPRINT6.UpdateCliErpPolymorphic.Ticket;

import java.util.UUID;

public class ComplaintTicket extends Ticket {

    // Constructor passes the complaint comment to the parent Ticket class.
    public ComplaintTicket(String comment) {
        super(comment);
    }

    // Overrides the abstract getId() method from Ticket.
    @Override
    public String getId() {
        return buildPrefix() + UUID.randomUUID().toString();
    }

    // Private helper method used internally by getId().
    private String buildPrefix() {
        return "C-";
    }
}
