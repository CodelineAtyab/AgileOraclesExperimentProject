package org.example.fromtibyan.sprint6.clierppolymorph;

abstract public class Ticket {
    private String id;
    private String comment;

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
    public String getId() {
        return id;
    }

    public String getComment() {
        return comment;
    }
}
