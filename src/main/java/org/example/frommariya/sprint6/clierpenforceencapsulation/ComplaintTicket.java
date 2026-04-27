package org.example.frommariya.sprint6.clierpenforceencapsulation;

public class ComplaintTicket extends Ticket {
    public String type;
    public static int numOfTickets=0;

    public ComplaintTicket(String id,String comment,String type){
        super(comment,id);
        this.type=type;
        numOfTickets++;
    }

    public String getType(){
        return
                type;
    }

    public void setType(String type){
        this.type=type;
    }

    public static int getNumOfTickets(){
        return
                numOfTickets;
    }

    @Override
    public String toString(){
        return
                String.format("[Complaint ID]: "+getId()+" Comments: "+getComment() +" Type: "+getType());
    }
}
