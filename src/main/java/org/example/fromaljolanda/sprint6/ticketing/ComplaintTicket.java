package org.example.fromaljolanda.sprint6.ticketing;

public class ComplaintTicket extends Ticket {
    private String type;
    private static int numberOfTickets = 0;

    // Constructor to create a new ComplaintTicket object
    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets ++;
        System.out.println("ComplaintTicket " + id + " added.");
    }

    // Getter method for complaint type
    public String getType() {
        return type;
    }

    // Static getter to return total complaint tickets
    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    // Override toString to display ticket details neatly
    @Override
    public String toString() {
        return "[Complaint] id = " + getId()
                + ", comment = \"" + getComment() + "\""
                + ", type = \"" + getType() + "\"" ;
    }
}
