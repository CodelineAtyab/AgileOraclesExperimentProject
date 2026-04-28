package org.example.fromibrahim.OOP.refactor.cli.erp;

public abstract class Ticket {

    private String id;
    private String comment;

    //  Constructor
    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }
}
