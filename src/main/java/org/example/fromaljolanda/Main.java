package org.example.fromaljolanda;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Examples From Al-Jolanda");

        Scanner input = new Scanner(System.in); // Scanner to read user input
        boolean mainMenuRunning = true; // Controls Main Menu Loop

        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();
        ArrayList<String> complaintStatus = new ArrayList<>();
        ArrayList<String> assignedStaff = new ArrayList<>();
        ArrayList<String> complaintComments = new ArrayList<>();
// ---------------------------------------------------------------------------------------------------------------------
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
// ---------------------------------------------------------------------------------------------------------------------
                // ================= Customer MENU =================
                if (userChoice == 1) {
                    System.out.println("Customer Module Selected.");
                    System.out.println();
                    boolean customerMenuRunning = true;
                    while (customerMenuRunning) {
                        System.out.println("1. Add Complaint\n" +
                                           "2. Back to Main Menu");
                        System.out.print("Enter your choice: ");
                        if (input.hasNextInt()) {
                            int customerChoice = input.nextInt();
                            input.nextLine(); // clear buffer

                            if (customerChoice == 1) {
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

                                    System.out.println("Complaint created successfully!"); // Confirmation message
                                }
                                else {
                                    System.out.println("Invalid ID! Must be numeric.");
                                    input.nextLine(); // clear invalid input
                                }
                                complaintStatus.add("OPEN");
                                assignedStaff.add("UNASSIGNED"); // Default
                                complaintComments.add(""); // empty comment initially
                            }
                            else if (customerChoice == 2) {
                                customerMenuRunning = false;
                            }
                            else {
                                System.out.println("Invalid option.");
                            }
                        }
                        else {
                            System.out.println("Invalid input! Enter number.");
                            input.nextLine();
                        }
                        System.out.println();
                    }
                }
// ---------------------------------------------------------------------------------------------------------------------
                // ================= Admin MENU =================
                else if (userChoice == 2) {
                    System.out.println("Admin Module Selected.");
                    System.out.print("Enter Admin PIN: ");
                    int adminPin = Integer.parseInt(input.nextLine());
                    if (adminPin == 12345) {
                        boolean adminMenuRunning = true;
                        while (adminMenuRunning) {
                            System.out.println();
                            System.out.println("===== ADMIN MENU =====");
                            System.out.println("1. View All Complaints\n" +
                                               "2. Search Complaint by ID\n" +
                                               "3. Close Complaint\n" +
                                               "4. Assign Complaint to Support Staff\n" +
                                               "5. Back to Main Menu");
                            System.out.print("Enter your choice: ");

                            if (input.hasNextInt()) {
                                int adminChoice = input.nextInt();
                                input.nextLine(); // clear buffer
                                if (adminChoice == 1) {
                                    if (complaintIds.isEmpty()) {
                                        System.out.println("No complaints found.");
                                    }
                                    else {
                                        System.out.println();
                                        System.out.println("---> all complaints");
                                        for (int i = 0; i < complaintIds.size(); i++) {
                                            System.out.println("Complaint ID: " + complaintIds.get(i)
                                                    + " | Complaint Description: " + complaintDescriptions.get(i)
                                                    + " | Complaint Priority: " + complaintPriorities.get(i)
                                                    + " | Complaint Status: " + complaintStatus.get(i)
                                                    + " | Assigned Staff: " + assignedStaff.get(i));
                                        }
                                    }
                                }

                                else if (adminChoice == 2) {
                                    System.out.println();
                                    System.out.print("Enter Complaint Number: ");
                                    if (input.hasNextInt()) {
                                        int searchNumber = input.nextInt();
                                        input.nextLine(); // clear buffer

                                        int index = complaintIds.indexOf(searchNumber);
                                        if (index != -1) {
                                            System.out.println("Ticket Number: " + complaintIds.get(index)
                                                    + " | Description: " + complaintDescriptions.get(index)
                                                    + " | Priority: " + complaintPriorities.get(index)
                                                    + " | Status: " + complaintStatus.get(index));
                                        }
                                        else {
                                            System.out.println("Complaint not found!");
                                        }
                                    }
                                    else {
                                        System.out.println("Invalid ID! Must be numeric.");
                                        input.nextLine();
                                    }
                                }

                                else if (adminChoice == 3) {
                                    System.out.print("Enter Complaint ID to close: ");
                                    if (input.hasNextInt()) {
                                        int closeId = input.nextInt();
                                        input.nextLine(); // clear buffer

                                        int index = complaintIds.indexOf(closeId);
                                        if (index != -1) {
                                            if (complaintStatus.get(index).equals("CLOSED")) {
                                                System.out.println("Complaint already CLOSED.");
                                            }
                                            else {
                                                complaintStatus.set(index, "CLOSED");
                                                System.out.println("Complaint closed successfully.");
                                            }
                                        }
                                        else {
                                            System.out.println("Complaint not found.");
                                        }
                                    }
                                    else {
                                        System.out.println("Invalid ID.");
                                        input.nextLine(); // clear invalid input
                                    }
                                }

                                else if (adminChoice == 4) {
                                    System.out.print("Enter Complaint ID to assign: ");
                                    if (input.hasNextInt()) {
                                        int assignId = input.nextInt();
                                        input.nextLine(); // clear buffer
                                        int index = complaintIds.indexOf(assignId);

                                        if (index == -1) {
                                            System.out.println("Complaint not found!");
                                        }
                                        else if (complaintStatus.get(index).equals("CLOSED")) {
                                            System.out.println("Cannot assign a CLOSED complaint.");
                                        }
                                        else {
                                            System.out.print("Enter Support Staff Name to assign: ");
                                            String staffName = input.nextLine();
                                            assignedStaff.set(index, staffName);
                                            System.out.println("Complaint " + assignId + " assigned to " + staffName);
                                        }
                                    }
                                    else {
                                        System.out.println("Invalid ID!");
                                        input.nextLine();
                                    }
                                }
                                else if (adminChoice == 5) {
                                    adminMenuRunning = false;
                                }
                                else {
                                    System.out.println("Invalid option.");
                                }
                            }
                            else {
                                System.out.println("Invalid input! Enter number.");
                                input.nextLine();
                            }
                            System.out.println();
                        }
                    }
                    else {
                        System.out.println("Access Denied! Incorrect PIN.");
                    }
                }
// ---------------------------------------------------------------------------------------------------------------------
                // ================= Support Staff MENU =================
                else if (userChoice == 3) {
                    System.out.println("Support Staff Module Selected.");
                    System.out.print("Enter your Staff Name: ");
                    String staffName = input.nextLine();
                    boolean staffMenuRunning = true;
                    while (staffMenuRunning) {
                        System.out.println();
                        System.out.println("===== SUPPORT STAFF MENU =====");
                        System.out.println("1. View My Assigned Complaints\n" +
                                           "2. Add Comment to Complaint\n" +
                                           "3. Close Complaint\n" +
                                           "4. Back to Main Menu");
                        System.out.print("Enter your choice: ");
                        if (input.hasNextInt()) {
                            int staffChoice = input.nextInt();
                            input.nextLine();

                            // ===== View Only Assigned Complaints =====
                            if (staffChoice == 1) {
                                int count = 0;
                                for (int i = 0; i < complaintIds.size(); i++) {
                                    if (assignedStaff.get(i).equals(staffName)) {
                                        System.out.println("ID: " + complaintIds.get(i)
                                                         + " | Description: " + complaintDescriptions.get(i)
                                                         + " | Priority: " + complaintPriorities.get(i)
                                                         + " | Status: " + complaintStatus.get(i)
                                                         + " | Comments: " + complaintComments.get(i));
                                        count ++;
                                    }
                                }
                                if (count == 0) {
                                    System.out.println("No complaints assigned to you.");
                                }
                            }

                            // ===== Add Comment =====
                            else if (staffChoice == 2) {
                                System.out.print("Enter Complaint ID: ");
                                if (input.hasNextInt()) {
                                    int commentId = input.nextInt();
                                    input.nextLine();
                                    int index = complaintIds.indexOf(commentId);

                                    if (index == -1) {
                                        System.out.println("Complaint not found.");
                                    }
                                    else if (!assignedStaff.get(index).equals(staffName)) {
                                        System.out.println("You cannot update complaints assigned to another staff member.");
                                    }
                                    else if (complaintStatus.get(index).equals("CLOSED")) {
                                        System.out.println("Cannot comment on CLOSED complaint.");
                                    }
                                    else {
                                        System.out.print("Enter your comment: ");
                                        String newComment = input.nextLine();
                                        String existing = complaintComments.get(index);
                                        if (existing.equals(" ")) {
                                            complaintComments.set(index, newComment);
                                        }
                                        else {
                                            complaintComments.set(index, existing + " - " + newComment);
                                            System.out.println("Comment added successfully.");
                                        }
                                    }
                                }
                                else {
                                    System.out.println("Invalid ID.");
                                    input.nextLine();
                                }
                            }

                            // ===== Close Complaint =====
                            else if (staffChoice == 3) {
                                System.out.print("Enter Complaint ID to close: ");
                                if (input.hasNextInt()) {
                                    int closeId = input.nextInt();
                                    input.nextLine(); // clear buffer

                                    int index = complaintIds.indexOf(closeId);

                                    if (index == -1) {
                                        System.out.println("Complaint not found.");
                                    }
                                    else if (!assignedStaff.get(index).equals(staffName)) {
                                        System.out.println("You cannot close complaints assigned to another staff member.");
                                    }
                                    else if (complaintStatus.get(index).equals("CLOSED")) {
                                        System.out.println("Complaint already CLOSED.");
                                    }
                                    else {
                                        complaintStatus.set(index, "CLOSED");
                                        System.out.println("Complaint closed successfully.");
                                    }
                                }
                                else {
                                    System.out.println("Invalid ID.");
                                    input.nextLine(); // clear invalid input
                                }


                            }
                            else if (staffChoice == 4) {
                                staffMenuRunning = false;
                            }
                            else {
                                System.out.println("Invalid option.");
                            }
                        }
                        else {
                            System.out.println("Invalid input.");
                            input.nextLine();
                        }
                        System.out.println();
                    }
                }
// ---------------------------------------------------------------------------------------------------------------------
                // ================= Exit =================
                else if (userChoice == 4) {
                    System.out.println("Exiting system... Goodbye!");
                    mainMenuRunning = false;
                }
// ---------------------------------------------------------------------------------------------------------------------
                // ================= Invalid option =================
                else {
                    System.out.println("Invalid option! Please select between 1-4.");
                }
            }
// ---------------------------------------------------------------------------------------------------------------------
            else {
                System.out.println("Invalid input! Please enter a number.");
                input.nextLine(); // clear invalid input
            }
            System.out.println();
        }
    }
}
