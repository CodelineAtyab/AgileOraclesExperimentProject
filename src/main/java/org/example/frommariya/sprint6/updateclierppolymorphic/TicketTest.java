package org.example.frommariya.sprint6.updateclierppolymorphic;

public class TicketTest {
    public static void main(String[] args){
        Ticket t1 = new ComplaintTicket("Internet Connection is Slow");
        Ticket t2 = new FeedbackTicket("Five Star Customer Service!");


        System.out.println("Complaint ID: " +t1.getId());

        System.out.println("Feedback ID: "  +t2.getId());

        System.out.println("Comment 1: " +t1.getComment());

        System.out.println("Comment 2: " +t2.getComment());
    }
}
