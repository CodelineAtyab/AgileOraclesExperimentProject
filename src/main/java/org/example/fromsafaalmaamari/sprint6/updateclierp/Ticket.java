package org.example.fromsafaalmaamari.sprint6.updateclierp;
import java.time.LocalDateTime;

public abstract class Ticket {
    private String id;
    private String comment;
    private LocalDateTime createdAt;

    //constructor
    public Ticket(String id, String comment){
        this.id = id;
        this.comment = comment;
        this.createdAt = LocalDateTime.now();
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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}