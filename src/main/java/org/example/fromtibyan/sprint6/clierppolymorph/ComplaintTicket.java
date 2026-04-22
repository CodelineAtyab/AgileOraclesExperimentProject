package org.example.fromtibyan.sprint6.clierppolymorph;

import java.util.UUID;

public class ComplaintTicket extends Ticket {

    private static int numberOfTickets = 0;
    private String type;

    ComplaintTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets++;
    }

    public String getType() {
        return type;
    }

    private String buildPrefixedId(){
        return "C-";
    }
    @Override
    public String getId(){
        return buildPrefixedId()+ UUID.randomUUID();
    }

    public void setType(String type) {
        this.type = type;
    }

    public static int getNumberOfTickets(){
        return numberOfTickets;
    }

}
