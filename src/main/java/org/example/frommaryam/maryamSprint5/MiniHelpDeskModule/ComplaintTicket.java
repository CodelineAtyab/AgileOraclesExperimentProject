package org.example.frommaryam.maryamSprint5.MiniHelpDeskModule;

import java.util.UUID;

public class ComplaintTicket extends Ticket {

    public ComplaintTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return "";
    }
}