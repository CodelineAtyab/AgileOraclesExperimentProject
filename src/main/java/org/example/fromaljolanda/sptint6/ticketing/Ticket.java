package org.example.fromaljolanda.sptint6.ticketing;

public abstract class Ticket {
    private String id;
    private String comment;

    // Constructor
    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    // getId method
    public String getId() {
        return id;
    }

    // srtId method
    public void setId(String id) {
        this.id = id;
    }

    // getComment method
    public String getComment() {
        return comment;
    }

    // setComment method
    public void setComment(String comment) {
        this.comment = comment;
    }
}
