package org.example.fromtibyan.sprint6.CLIERPOOP;

public class ComplaintTicket extends Ticket {
    ComplaintTicket(String id, String comment) {
        super(id, comment);
    }
    private String type;

    private static int numberOfTickets;
    public static int getNumberOfTickets(){

        return numberOfTickets;
    }
}
