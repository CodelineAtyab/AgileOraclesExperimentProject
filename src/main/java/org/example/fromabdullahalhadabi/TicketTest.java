package org.example.fromabdullahalhadabi;

import java.util.UUID;

public class TicketTest {
    public static void main(String[] args) {

        Ticket t1 = new ComplaintTicket("Too loud");
        Ticket t2 = new FeedbackTicket("Great app!");

        // Pure polymorphism runtime decides which getId() to call
        System.out.println("=== Polymorphic Ticket ID Demo ===");
        System.out.println("Complaint ID: " + t1.getId());
        System.out.println("Feedback ID:  " + t2.getId());

        // Demonstrate UUID uniqueness
        System.out.println("\n=== UUID Uniqueness Demo ===");
        System.out.println("ID 1 starts with C-: " + t1.getId().startsWith("C-"));
        System.out.println("ID 2 starts with F-: " + t2.getId().startsWith("F-"));
        System.out.println("IDs are unique: " + !t1.getId().equals(t2.getId()));

        // Create more tickets to show polymorphism
        System.out.println("\n=== Multiple Tickets ===");
        Ticket[] tickets = {
                new ComplaintTicket("Server down"),
                new FeedbackTicket("Excellent service"),
                new ComplaintTicket("Billing error"),
                new FeedbackTicket("Could be better")
        };

        // Pure polymorphism -same method call, different results
        for (int i = 0; i < tickets.length; i++) {
            System.out.println("Ticket " + (i + 1) + ": " + tickets[i].getId());
        }



    }
}
class  Ticket{
    private String comment;
    private String localDtaeTime;

    public Ticket(String localDtaeTime){
        this.localDtaeTime = localDtaeTime;
        this.localDtaeTime=localDtaeTime;
    }
    public String getComment() {
    return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    public String getLocalDtaeTime() {
        return localDtaeTime;

    }
    public void setLocalDtaeTime(String localDtaeTime) {
        this.localDtaeTime = localDtaeTime;
    }

    public String getId() {
        return UUID.randomUUID().toString();

    }

}
 class ComplaintTicket extends Ticket {
    private static final String PREFIX = "C-";

    public ComplaintTicket(String comment) {
        super(comment);
    }
    @Override
    public String getId() {
        return buildPrefixedId();

    }

     /*
      Private helper method to build the prefixed ID.
      Not exposed publicly - demonstrates encapsulation.
      @return Prefixed UUID
      */
    private String buildPrefixedId() {
        return PREFIX + UUID.randomUUID().toString();

    }

}

 class FeedbackTicket extends Ticket {
    // Static counter for prefix
    private static final String PREFIX = "F-";

    public FeedbackTicket(String comment) {
        super(comment);
    }

    @Override
    public String getId() {
        return buildPrefixedId();
    }

    /**
     * Private helper method to build the prefixed ID.
     * Not exposed publicly - demonstrates encapsulation.
     * @return Prefixed UUID
     */
    private String buildPrefixedId() {
        return PREFIX + UUID.randomUUID().toString();
    }
}






