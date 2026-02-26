package org.example.fromaljolanda;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in); // Scanner to read user input
        boolean mainMenuRunning = true; // Controls Main Menu Loop

        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();

        // ================= MAIN MENU =================
        while (mainMenuRunning) {
            System.out.println("================= MAIN MENU =================");
            System.out.print("Please Select Option:\n" +
                    "1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit\n" +
                    "Enter your choice: ");

            // Check if user entered a number
            if (input.hasNextInt()) {
                int userChoice = Integer.parseInt(input.nextLine());
                // ================= Customer MENU =================
                if (userChoice == 1) {
                    System.out.println("Customer Module Selected.");
                    System.out.print("Enter Complaint ID (numeric): "); // Ask User to Enter Complaint ID
                    if (input.hasNextInt()) {
                        int complaintId = input.nextInt();
                        input.nextLine();

                        System.out.print("Enter Complaint Description: "); // Ask User to Enter Complaint Description
                        String description = input.nextLine();

                        System.out.print("Select Priority (LOW / MEDIUM / HIGH) or press Enter for default (MEDIUM): "); // Ask User to Enter Complaint Priority
                        String priority = input.nextLine().toUpperCase();

                        if (priority.isEmpty()) {
                            priority = "MEDIUM"; // Default = MEDIUM
                        }
                        if (!priority.equals("LOW") && !priority.equals("MEDIUM") && !priority.equals("HIGH")) {
                            System.out.println("Invalid priority! Setting to default (MEDIUM)");
                            priority = "MEDIUM";
                        }

                        // Store Data
                        complaintIds.add(complaintId);
                        complaintDescriptions.add(description);
                        complaintPriorities.add(priority);

                        System.out.println();
                        System.out.println("Complaint created successfully!"); // Confirmation message
                        System.out.println("---> Complaint details:");
                        System.out.println("Complaint ID: " + complaintId);
                        System.out.println("Complaint Description: " + description);
                        System.out.println("Complaint Priority: " + priority);
                    }
                    else {
                        System.out.println("Invalid ID! Must be numeric.");
                        input.nextLine(); // clear invalid input
                    }
                }
                // ================= Admin MENU =================
                else if (userChoice == 2) {
                    System.out.println("Admin Module Selected.");
                }
                // ================= Support Staff MENU =================
                else if (userChoice == 3) {
                    System.out.println("Support Staff Module Selected.");
                }
                // ================= Exit =================
                else if (userChoice == 4) {
                    System.out.println("Exiting system... Goodbye!");
                    mainMenuRunning = false;
                } else {
                    System.out.println("Invalid option! Please select between 1-4.");
                }
            }
            else {
                System.out.println("Invalid input! Please enter a number.");
                input.nextLine(); // clear invalid input
            }
            System.out.println();
        }
    }
}
