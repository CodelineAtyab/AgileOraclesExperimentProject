package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class AdminModule {
    public static void adminMenu(Scanner input, ArrayList<Complaint> complaints) {
        System.out.print("Enter Admin PIN: ");
        int pin = input.nextInt();
        if (pin != 1234) {
            System.out.println("Incorrect PIN");
            return;
        }
        while (true) {
            System.out.println("\n--- Admin Menu ---");
            System.out.println("1. View All Complaints");
            System.out.println("2. Search Complaint");
            System.out.println("3. Close Complaint");
            System.out.println("4. Back");
            System.out.println("5. Exit");
            int choice = input.nextInt();
            switch (choice) {
                case 1:
                    if (complaints.isEmpty()) {
                        System.out.println("No Complaints Found");
                    }
                    for (Complaint complaint : complaints) {
                        System.out.println(complaint);
                    }
                    break;
                case 2:
                    System.out.print("Enter Complaint ID: ");
                    int searchId = input.nextInt();
                    boolean found = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == searchId) {
                            System.out.println(complaint);
                            found = true;
                        }
                    }
                    if (!found) {
                        System.out.println("Complaint Not Found");
                    }
                    break;
                case 3:
                    System.out.print("Enter Complaint ID: ");
                    int closeId = input.nextInt();
                    boolean closed = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == closeId) {
                            if (complaint.getStatus().equals("CLOSED")) {
                                System.out.println("Already Closed");
                            } else {
                                complaint.setStatus("CLOSED");
                                System.out.println("Complaint Closed");
                            }
                            closed = true;
                        }
                    }
                    if (!closed) {
                        System.out.println("Complaint Not Found");
                    }
                    break;
                case 4:
                    return;
                case 5:
                    System.out.println("Good Bye");
                    System.exit(0);
                default:
                    System.out.println("Invalid Choice");
            }
        }
    }

    public static void assignComplaint(Scanner input, ArrayList<Complaint> complaints) {
        System.out.print("Enter Complaint ID: ");
        int id = input.nextInt();
        input.nextLine();
        boolean found = false;
        for (Complaint complaint : complaints) {
            if (complaint.getComplaintId() == id) {
                if (complaint.getStatus().equals("CLOSED")) {
                    System.out.println("Closed Complaint Cannot Be Assigned");
                    return;
                }
                System.out.print("Enter Staff Name: ");
                String staffName = input.nextLine();
                complaint.setAssignedStaff(staffName);
                System.out.println("Assignment Successful");
                found = true;
                break;
            }
        }
        if (!found) {
            System.out.println("Complaint Not Found");
        }
    }
}
