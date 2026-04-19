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



