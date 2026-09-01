package org.example.fromyarab.cLIERPPolymorphicTicketIDs;

public class Main {
    public static void main(String[] args) {
        Ticket[] tickets = new Ticket[4];

        tickets[0] = new ComplaintTicket("Slow internet service", "Alice", "High");
        tickets[1] = new FeedbackTicket("Great customer service", "Bob", 5);
        tickets[2] = new ComplaintTicket("Billing error", "Charlie", "Medium");
        tickets[3] = new FeedbackTicket("Could be better", "Diana", 3);

        System.out.println("=== Polymorphic Ticket Demo ===\n");

        for (Ticket ticket : tickets) {
            System.out.println("Type: " + getTicketType(ticket));
            System.out.println("ID: " + ticket.getId());
            System.out.println("Description: " + ticket.getDescription());
            System.out.println("Created By: " + ticket.getCreatedBy());
            System.out.println("------------------------");
        }

        System.out.println("Total Tickets: " + Ticket.getTicketCount());
    }

    private static String getTicketType(Ticket ticket) {
        if (ticket instanceof ComplaintTicket) {
            return "Complaint";
        } else if (ticket instanceof FeedbackTicket) {
            return "Feedback";
        }
        return "Unknown";
    }
}