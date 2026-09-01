package org.example.fromibrahim.OOP.refactor.cli.erp;

public class ComplaintTicket extends Ticket {

    private String type;

    private static int numberOfTickets = 0;

    //  Constructor
    public ComplaintTicket(String id, String comment, String type) {
        // super() MUST be the very first statement.
        // It calls Ticket(id, comment) to initialise the inherited fields.
        super(id, comment);

        this.type = type;

        // Increment the shared counter every time a new object is born.
        numberOfTickets++;
    }

    //  Getter
    public String getType() {
        return type;
    }

    //  Static getter
    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    //  toString()  : overrides Object.toString() for clean printing
    //  Without this, System.out.println(ticket) would print something
    //  like  ComplaintTicket@4e50df2e  which is useless.
    @Override
    public String toString() {
        // getId() and getComment() are inherited from Ticket
        return "[Complaint] id=" + getId() + ", comment=\"" + getComment() + "\"" + ", type=\""    + type         + "\"";
    }
}