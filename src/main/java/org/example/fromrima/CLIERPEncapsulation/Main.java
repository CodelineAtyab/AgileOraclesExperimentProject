package org.example.fromrima.CLIERPEncapsulation;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Ticket> tickets = new ArrayList<>();
        System.out.println("Complaint tickets so far: " + ComplaintTicket.getNumberOfTickets());
        System.out.println("\n--- Create Complaint Ticket ---");
        System.out.print("Enter complaint ID: ");
        String complaintId = scanner.nextLine();
        System.out.print("Enter complaint comment: ");
        String complaintComment = scanner.nextLine();
        System.out.print("Enter complaint type: ");
        String complaintType = scanner.nextLine();
        ComplaintTicket complaint = new ComplaintTicket(complaintId, complaintComment, complaintType);
        tickets.add(complaint);
        System.out.println("Complaint ticket added.");
        System.out.println("\n--- Create Feedback Ticket ---");
        System.out.print("Enter feedback ID: ");
        String feedbackId = scanner.nextLine();
        System.out.print("Enter feedback comment: ");
        String feedbackComment = scanner.nextLine();
        System.out.print("Enter rating (1-5): ");
        int rating = scanner.nextInt();
        FeedbackTicket feedback = new FeedbackTicket(feedbackId, feedbackComment, rating);
        tickets.add(feedback);
        System.out.println("Feedback ticket added.");
        System.out.println("\nComplaint tickets so far: " + ComplaintTicket.getNumberOfTickets());
        System.out.println("\n--- Ticket List ---");
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
        }
        scanner.close();
    }
}