package org.example.fromalharithalkindi.s5.refactorExistingCLIERP;

abstract class Ticket {
    private  static int numOfTickets=0;

    private final String ticketId;
    private final String comment;

    public Ticket(String ticketId,String comment)
    {
        this.ticketId=ticketId;
        this.comment=comment;
        numOfTickets++;
    }
    public String getTicketId() {
        return ticketId;

    }
    public String getComment(){
        return comment;
    }
    public static int getNumOfTickets(){
        return numOfTickets;
    }

}
