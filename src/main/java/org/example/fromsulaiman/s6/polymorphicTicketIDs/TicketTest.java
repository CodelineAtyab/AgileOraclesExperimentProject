package org.example.fromsulaiman.s6.polymorphicTicketIDs;

public class TicketTest {
    public static void main(String[] args) {

        Ticket t1 = new ComplaintTicket("Login page is broken on mobile.");
        Ticket t2 = new FeedbackTicket("Please add a dark mode.");

        System.out.println(t1.getId());
        System.out.println(t2.getId());
    }
}
