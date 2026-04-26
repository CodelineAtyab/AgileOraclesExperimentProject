package org.example.fromkhadija.sprint6;

import java.time.LocalDateTime;

public class TicketTest {
    public static void main(String[] args) {
        //Polymorphism --> One Interface multiple implementation
        Ticket t1 = new ComplaintTicket("That's cool", LocalDateTime.now());
        Ticket t2 = new FeedbackTicket("good service", LocalDateTime.now());

        System.out.println("\n" + t1);
        System.out.println("\n" + t2 + "\n");

        System.out.println("ComplaintTicket --> " + t1.getId() + "\n");
        System.out.println("FeedbackTicket --> " + t2.getId());

        //new Ticket(); ---> can not create object --> Ticket is abstract; cannot be instantiated
    }
}
