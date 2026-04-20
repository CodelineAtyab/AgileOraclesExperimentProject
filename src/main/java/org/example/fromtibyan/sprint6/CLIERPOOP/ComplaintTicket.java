package org.example.fromtibyan.sprint6.CLIERPOOP;

public class ComplaintTicket extends Ticket {

    private static int numberOfTickets = 0;
    private String type;

    ComplaintTicket(String id, String comment) {
        super(id, comment);
        numberOfTickets++;
    }

    public static int getNumberOfTickets(){
        return numberOfTickets;
    }
}
