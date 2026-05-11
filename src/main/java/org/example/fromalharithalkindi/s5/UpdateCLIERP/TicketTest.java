package org.example.fromalharithalkindi.s5.UpdateCLIERP;

public class TicketTest {
    public static void main(String[] args) {

        Ticket t1 = new ComplaintTicket("Login broken",   "Cannot log in after password reset");
        Ticket t2 = new ComplaintTicket("App crashes",    "App crashes on startup on Android 14");
        Ticket t3 = new FeedbackTicket("Love dark mode",  "The new dark mode is very easy on the eyes");
        Ticket t4 = new FeedbackTicket("Faster checkout", "Please reduce checkout steps from 4 to 2");


        Ticket[] tickets = { t1, t2, t3, t4 };

        System.out.println("=== Help-Desk Tickets ===\n");

        for (Ticket ticket : tickets)
        {
            System.out.println(ticket.getSummary());
        }



    }
}
