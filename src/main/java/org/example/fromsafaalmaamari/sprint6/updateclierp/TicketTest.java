package org.example.fromsafaalmaamari.sprint6.updateclierp;

public class TicketTest {
    public static void main(String[] args) {

        //Create objects
        Ticket t1 = new ComplaintTicket("C001", "Late service", "Delivery");
        Ticket t2 = new FeedbackTicket("F001", "Good Service", 5);

        //print
        System.out.println(t1.getId());
        System.out.println(t2.getId());
    }
}
