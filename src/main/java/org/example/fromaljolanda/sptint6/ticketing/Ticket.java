package org.example.fromaljolanda.sptint6.ticketing;

public abstract class Ticket {
    private String id;
    private String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    public String getId() {
        return id;
    }
}
