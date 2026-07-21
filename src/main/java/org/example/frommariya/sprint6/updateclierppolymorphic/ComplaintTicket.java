package org.example.frommariya.sprint6.updateclierppolymorphic;

import java.util.UUID;

public class ComplaintTicket extends Ticket {
    public ComplaintTicket(String comment){
        super(comment);
    }

    @Override
    public String getId(){
        return
                buildPrefixedId();
    }

    //Private Helper for ID generation
    private String buildPrefixedId(){
        return
                "C-"+UUID.randomUUID().toString();
    }
}
