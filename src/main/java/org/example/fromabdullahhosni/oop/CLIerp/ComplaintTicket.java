package org.example.fromabdullahhosni.oop.CLIerp;

public class ComplaintTicket extends Ticket {
    // Declare Private String
    private String type;
    private static int numberOfTickets = 0;

    //constructor
    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment);     // super method reffers gets id, comment from parent class.
        this.type = type;
        numberOfTickets++;      //counter is Adding value.

    }

    // method
    public static int getNumberOfTickets() {
        return numberOfTickets;
    }
    // method
    public String getType() {
        return type;
    }
}
