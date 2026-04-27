package org.example.fromsulaiman.s6.polymorphicTicketIDs;

import java.util.Scanner;


public class TicketTest {
    public static void main(String[] args) {

        // CHANGE main body — replace the two hardcoded new lines
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter complaint message: ");
        String complaintMsg = scanner.nextLine();

        System.out.print("Enter feedback message: ");
        String feedbackMsg = scanner.nextLine();

        Ticket t1 = new ComplaintTicket(complaintMsg); // was ("Login page is broken...")
        Ticket t2 = new FeedbackTicket(feedbackMsg);   // was ("Please add a dark mode.")

        System.out.println(t1.getId());
        System.out.println(t2.getId());
    }
}
