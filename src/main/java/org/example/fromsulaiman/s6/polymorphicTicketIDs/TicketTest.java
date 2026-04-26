package org.example.fromsulaiman.s6.polymorphicTicketIDs;


public class TicketTest {
    public static void main(String[] args) {

        Ticket t1 = new ComplaintTicket("Login page is broken on mobile.");
        Ticket t2 = new FeedbackTicket("Please add a dark mode.");

        // second call — proves UUID is different every time
        System.out.println(t1.getId());
        System.out.println(t2.getId());

        // prefix check
        System.out.println(t1.getId().startsWith("C-"));
        System.out.println(t2.getId().startsWith("F-"));

        // inherited fields
        System.out.println(t1.getComment());
        System.out.println(t1.getCreatedAt());
    }
}
