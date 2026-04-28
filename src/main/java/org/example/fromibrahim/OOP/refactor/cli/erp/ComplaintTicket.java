package org.example.fromibrahim.OOP.refactor.cli.erp;

public class ComplaintTicket extends Ticket {

    private String type;

    private static int numberOfTickets = 0;

    public ComplaintTicket(String id, String comment, String type) {
        // super() MUST be the very first statement.
        // It calls Ticket(id, comment) to initialise the inherited fields.
        super(id, comment);

        this.type = type;

        // Increment the shared counter every time a new object is born.
        numberOfTickets++;
    }

}
