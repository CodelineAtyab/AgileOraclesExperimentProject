package org.example.fromibrahim.OOP.refactor.cli.erp;

public abstract class Ticket {

    private String id;
    private String comment;

    //  Constructor
    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    //  Getters
    public String getId() {
        return id;
    }

    public String getComment() {
        return comment;
    }

    //  Setters
    public void setId(String id) {
        this.id = id;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
