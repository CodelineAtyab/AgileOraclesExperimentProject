package org.example.fromtibyan.sprint6.clierppolymorph;

import java.util.UUID;

abstract public class Ticket {
    private String id;
    private String comment;
    private int LocalDateTime;

    //constructor
    public Ticket(String id, String comment){
        this.id =id;
        this.comment= comment;
    }
    //setters
    public void setId(String id) {
        this.id = id;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    //getters
    abstract public String getId();

    public String getComment() {
        return comment;
    }
}
