package org.example.fromrazan.Sprint6B;

public class ComplaintTicket extends Ticket{


    public ComplaintTicket(String description){
        super((description));
    }




    @Override
    public String getId(){
        return generateId();
    }

    private String generateId(){
        return  "C" + System.currentTimeMillis();
    }
}
