package org.example.fromalharith.polymorphic;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TicketDemo {

    public static void main(String[] args) {
        List<Ticket> tickets = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);

        int choice = -1;

        while (choice != 0) {
            System.out.println("1. Add Complaint");
            System.out.println("2. Add Feedback");
            System.out.println("3. Show All Tickets");
            System.out.println("4. Process Tickets");
            System.out.println("0. Exit");

            choice = scanner.nextInt();
            scanner.nextLine();

            if (choice == 1) {
                System.out.print("Message: ");
                String msg = scanner.nextLine();

                System.out.print("Created By: ");
                String user = scanner.nextLine();

                System.out.print("Severity: ");
                int severity = scanner.nextInt();

                tickets.add(new ComplaintTicket(msg, user, severity));

            } else if (choice == 2) {
                System.out.print("Message: ");
                String msg = scanner.nextLine();

                System.out.print("Created By: ");
                String user = scanner.nextLine();

                System.out.print("Rating: ");
                int rating = scanner.nextInt();

                tickets.add(new FeedbackTicket(msg, user, rating));

            } else if (choice == 3) {
                for (Ticket t : tickets) {
                    System.out.println(t.getDetails());
                }

            } else if (choice == 4) {
                for (Ticket t : tickets) {
                    t.process();
                }

            } else if (choice == 0) {
                System.out.println("Goodbye!");

            } else {
                System.out.println("Invalid choice!");
            }
        }
    }
}