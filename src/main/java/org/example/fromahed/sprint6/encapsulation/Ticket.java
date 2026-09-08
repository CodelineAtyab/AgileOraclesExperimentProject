package org.example.fromahed.sprint6.encapsulation;

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

    public void setId(String id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "id = " + id + ", comment\"" + comment + "\"";
    }

    public String generateId() {
        return null;
    }
}


