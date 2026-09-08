package org.example.fromsaif.SPRINT6.UpdateCliErpEncapsulation;

public abstract class Ticket {

    // Stores the unique ticket ID
    private String id;

    // Stores the comment entered by the user
    private String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    // Returns the ticket ID.
    public String getId() {
        return id;
    }

    // Updates the ticket ID.
    public void setId(String id) {
        this.id = id;
    }

    // Returns ticket comment
    public String getComment() {
        return comment;
    }

    // Updates the ticket comment
    public void setComment(String comment) {
        this.comment = comment;
    }
}
