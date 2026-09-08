package org.example.fromrima.CLIERPEncapsulation;

public abstract class Ticket {
    private final String id;
    private final String comment;

    public Ticket(String id, String comment) {
        this.id = id;
        this.comment = comment;
    }

    public String getId() {
        return id;
    }

    public String getComment() {
        return comment;
    }

    // each subclass must describe itself
    @Override
    public abstract String toString();
}