package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

public class ComplaintTicket extends Ticket {

    // Stores the complaint type
    private String type;

    // Counts how many ComplaintTicket objects have been created.
    private static int numberOfTickets = 0;

    // Constructor creates complaint ticket using ID, comment, type.
    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;

        numberOfTickets++;
    }
    // Returns the complaint type
    public String getType() {
        return type;

    }
    // Updates the complaint type
    public void setType(String type) {
        this.type = type;

    }
    // Returns how many complaint tickets have been created
    public static int getNumberOfTickets() {
        return numberOfTickets;

    }
}
