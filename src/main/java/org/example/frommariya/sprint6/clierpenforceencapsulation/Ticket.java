package org.example.frommariya.sprint6.clierpenforceencapsulation;

public class Ticket {
    public String comment;
    public String id;

    // Creating Constructions
    public Ticket(String comment,String id){
        this.comment=comment;
        this.id=id;
    }

    // Creating Getters
    public String getComment(){
        return comment;
    }

    public String getId(){
        return id;
    }

    // Creating Setters
    public void setComment(String comment){
        this.comment=comment;
    }

    public void setId(String id){
        this.id=id;
    }
}
