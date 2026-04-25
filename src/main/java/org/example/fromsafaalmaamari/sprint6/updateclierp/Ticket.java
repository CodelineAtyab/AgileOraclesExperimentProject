package org.example.fromsafaalmaamari.sprint6.updateclierp;

public abstract class Ticket {
    private String id;
    private String comment;
    private String LocalDateTimeCreatedAt;

    //constructor
    public Ticket(String id, String comment){
        this.id = id;
        this.comment = comment;
    }
    //abstract method
    public abstract String getId();

    //Set id
    public void setId(String id){
        this.id = id;
    }
    //Get comment
    public String getComment(){
        return comment;
    }
    //Set comment
    public void setComment(String comment){
        this.comment = comment;
    }
}

