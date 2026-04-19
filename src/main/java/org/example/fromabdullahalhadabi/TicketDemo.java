package org.example.fromabdullahalhadabi;

public class TicketDemo{
    public static void main(String[] args) {


    }
}
// the father class
abstract class Ticket {
    private String id;
    private String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    // Getters and Setters for encapsulation
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public abstract String toString();
}

class ComplaintTicket extends Ticket {
    private String type;

    // Static field to track number of ComplaintTicket instances Static Fields
    private static int numberOfTickets = 0;


    public ComplaintTicket(String id, String comment, String type) {
        super(id, comment); // Call parent constructor (Inheritance)
        this.type = type;
        numberOfTickets++;
    }
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }

    @Override
    public String toString() {
        return String.format("[Complaint] id=%s, comment=\"%s\", type=\"%s\"",
                getId(), getComment(), type);
    }
}



