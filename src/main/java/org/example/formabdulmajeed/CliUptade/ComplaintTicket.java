package org.example.formabdulmajeed.CliUptade;

import java.util.UUID;

public class ComplaintTicket extends Ticket{
    private String type;


    public ComplaintTicket(String commit, String type) {
        super(commit);
        this.type = type;
    }
    private String builedPreFix(){
        return "C-"+ UUID.randomUUID().toString();
    }
    @Override
    public String getId() {
        return builedPreFix();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
