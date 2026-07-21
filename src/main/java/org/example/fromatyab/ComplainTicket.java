package org.example.fromatyab;

import java.util.UUID;

public class ComplainTicket extends Ticket {
    public String type;
    private static int noOfTicketCreated = 0;

    public ComplainTicket() {
        noOfTicketCreated++;
    }

    @Override
    public String getId() {
        return getInitialWithNo() + UUID.randomUUID().toString();
    }

    public static int getNoOfTicketCreated() { return noOfTicketCreated; }

    private String getInitialWithNo() {return "c" + Integer.toString(noOfTicketCreated) + "-";}
}
