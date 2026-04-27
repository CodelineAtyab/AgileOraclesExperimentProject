package org.example.fromkhadija.sprint6b;

public class ComplainTicket extends Ticket{

    private String type;
    private static int numberOfTickets = 0;

    public ComplainTicket(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
    }
    public ComplainTicket(String id){
        super(id,"");
        numberOfTickets++;

    }
    public String getType() {

        return type;
    }
    public void setType(String type) {

        this.type = type;
    }

    public static int getNumberOfTickets() {
        return numberOfTickets;
    }
    public void setNumberOfTickets(int numberOfTickets) {
        this.numberOfTickets = numberOfTickets;
    }

    @Override
    public String toString() {
        return "ComplaintTicket " + "ID= " + getId() + "--> Added.";
    }

    public String getDetails() {
        return "[Complaint] ID= " + getId() + "Comment= " + getComment() + "Type= "  + type;
    }

}