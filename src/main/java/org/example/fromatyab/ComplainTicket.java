package org.example.fromatyab;

public class ComplainTicket extends Ticket {
    public String type;
    private static int noOfTicketCreated = 0;

    public ComplainTicket() {
        noOfTicketCreated++;
    }

    public static int getNoOfTicketCreated() { return noOfTicketCreated; }
}
