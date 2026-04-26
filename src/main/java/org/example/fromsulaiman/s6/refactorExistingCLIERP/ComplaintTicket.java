package org.example.fromsulaiman.s6.refactorExistingCLIERP;


public class ComplaintTicket extends Ticket {

    private String type;
    private static int numberOfTickets = 0;

    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets++;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }
}