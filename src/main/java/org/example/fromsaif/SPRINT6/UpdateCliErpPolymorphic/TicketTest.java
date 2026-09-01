package org.example.fromsaif.SPRINT6.UpdateCliErpPolymorphic;

public class TicketTest {
    public static void main(String[] args) {

        Ticket complaintTicket = new ComplaintTicket("System is not working properly");

        Ticket feedbackTicket = new FeedbackTicket("The ERP system is ready to use");

        System.out.println("Complaint Ticket ID: " + complaintTicket.getId());

        System.out.println("Feedback Ticket ID: " + feedbackTicket.getId());
    }
}
