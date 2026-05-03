package org.example.fromkawther.sprint6.clierp;

public abstract class Ticket {
    private String id;
    private String comment;
    //constructor:
    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }
    //getters:
    public String getId() { return id; }
    public String getComment() { return comment; }
}

