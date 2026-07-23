package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {
    public static void customerMenu(Scanner input, ArrayList<Complaint> complaints) {
        while (true) {
            System.out.println("\n--- Customer Menu ---");
            System.out.println("1. Create Complaint");
            System.out.println("2. Back");
            System.out.println("3. Exit");
            int choice = input.nextInt();
            input.nextLine();
            switch (choice) {
                case 1:
                    System.out.print("Enter Complaint ID: ");
                    int id = input.nextInt();
                    input.nextLine();
                    System.out.print("Enter Description: ");
                    String description = input.nextLine();
                    System.out.print("Priority (LOW/HIGH) or press Enter for MEDIUM: ");
                    String priority = input.nextLine().toUpperCase();
                    if (!priority.equals("LOW") &&
                            !priority.equals("HIGH")) {
                        priority = "MEDIUM";
                    }
                    complaints.add(new Complaint(id, description, priority));
                    System.out.println("Complaint Created Successfully");
                    break;
                case 2:
                    return;
                case 3:
                    System.out.println("Good Bye");
                    System.exit(0);
                default:
                    System.out.println("Invalid Choice");
            }
        }
    }
}