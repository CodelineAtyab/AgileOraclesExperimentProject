package org.example.fromalharithalkindi.s5.refactorExistingCLIERP;

abstract class Ticket {

    private static int numberOfTickets = 0;

    private final String ticketId;
    private final String comment;

    public Ticket(String ticketId, String comment) {
        this.ticketId = ticketId;
        this.comment = comment;
        numberOfTickets++;
    }

    public String getTicketId() { return ticketId; }
    public String getComment()  { return comment; }

    public static int getNumberOfTickets() { return numberOfTickets; }
}