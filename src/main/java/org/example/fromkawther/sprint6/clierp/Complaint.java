package org.example.fromkawther.sprint6.clierp;
public class Complaint extends Ticket {
    public String type;
    private static int numberOfTickets = 0;
    public Complaint(String id, String comment, String type) {
        super(id, comment);
        this.type = type;
        numberOfTickets++; //Increment the counter every time a new ticket is created.
}
    public static int getNumberOfTickets() {
        return numberOfTickets;
    }
}
