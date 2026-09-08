package org.example.fromaljolanda.sprint6.helpdesk;

public class Main {
    public static void main(String[] args) {

        // Polymorphism (no instanceof, no if/else)
        Ticket t1 = new ComplaintTicket("App is slow");
        Ticket t2 = new FeedbackTicket("Nice UI design");

        // Each call generates unique ID with correct prefix
        System.out.println("Ticket 1 ID: " + t1.getId());
        System.out.println("Ticket 2 ID: " + t2.getId());
    }
}
