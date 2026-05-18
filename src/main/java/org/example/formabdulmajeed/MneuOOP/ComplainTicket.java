package org.example.formabdulmajeed.MneuOOP;

public class ComplainTicket extends Ticket{
    private String type;
    private static int noOfTickets =0;

    public ComplainTicket() {
        noOfTickets++;
        this.id ="CT-"+ "00"+ noOfTickets;
    }
    public static int getnoOfTicket(){ return noOfTickets;}


    public String getId() {
        return id;
    }

    @Override
    public String setId() {
        return "";
    }

    @Override
    public String setComment(String comments) {
        return this.comment=comments;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String toString() {
        return "[Complaint] " +
                "id='" + id + '\'' +
                ", comment='" + comment + '\''
                 +", type='" + type + '\'';
    }


    public String toStringId() {
        return "ComplainTicket " + id;
    }
}
