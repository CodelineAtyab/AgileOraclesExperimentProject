package org.example.fromaljolanda.sptint6.ticketing;

public class ComplaintTicket extends Ticket {
    private String type;
    private static int numberOfTickets = 0;

    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets ++;
        System.out.println("ComplaintTicket " + id + "added ..");
    }

    public String getType() {
        return type;
    }

}
