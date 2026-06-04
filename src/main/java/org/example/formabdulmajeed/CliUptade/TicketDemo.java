package org.example.formabdulmajeed.CliUptade;

public class TicketDemo {
    public static void main(String[] args) {
        Ticket c1 = new ComplaintTicket("to laud","sound");
        Ticket f1 = new FeedbackTicket("GOOD JOB", 5);
        System.out.println(c1.getlocalTime());
        System.out.println(c1.getId());
        System.out.println(f1.getId());
    }
}
