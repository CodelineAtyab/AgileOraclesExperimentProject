package org.example.frommariya.sprint6.updateclierppolymorphic;

import java.time.LocalDateTime;

public abstract class Ticket {
    public String comment;
    public LocalDateTime createdAt;

    public Ticket(String comment){
        this.comment=comment;
        this.createdAt=LocalDateTime.now();
    }

    //Abstract method
    public abstract String getId();

    public String getComment(){
        return
                comment;
    }
}
