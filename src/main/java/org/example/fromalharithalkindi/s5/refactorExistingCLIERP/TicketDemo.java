package org.example.fromalharithalkindi.s5.refactorExistingCLIERP;

public class TicketDemo {
    public static void main(String[] args) {

        System.out.println("Complaint tickets so far: " + Ticket.getNumberOfTickets());

        System.out.println("--- Creating tickets ---");

        ComplaintTicket ct1 = new ComplaintTicket("CT-001", "Too loud", "Noise");
        System.out.println("ComplaintTicket " + ct1.getTicketId() + " added.");

        ComplaintTicket ct2 = new ComplaintTicket("CT-002", "Too cold", "Air-con");
        System.out.println("ComplaintTicket " + ct2.getTicketId() + " added.");

        FeedbackTicket fb1 = new FeedbackTicket("FB-001", "Great app!", 5);
        System.out.println("FeedbackTicket  " + fb1.getTicketId() + " added.");

        System.out.println("Complaint tickets so far: " + Ticket.getNumberOfTickets());

        System.out.println("--- Ticket List ---");
        System.out.println(ct1);
        System.out.println(ct2);
        System.out.println(fb1);
        //done
    }
}
