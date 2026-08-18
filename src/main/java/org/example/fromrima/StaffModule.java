package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class StaffModule {
    public static void staffMenu(Scanner input, ArrayList<Complaint> complaints) {
        input.nextLine();
        System.out.print("Enter Staff Name: ");
        String staffName = input.nextLine();
        while (true) {
            System.out.println("\n--- Staff Menu ---");
            System.out.println("1. View My Complaints");
            System.out.println("2. Add Comment");
            System.out.println("3. Close Complaint");
            System.out.println("4. Back");
            System.out.println("5. Exit");
            int choice = input.nextInt();
            input.nextLine();
            switch (choice) {
                case 1:
                    boolean found = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getAssignedStaff().equalsIgnoreCase(staffName)) {
                            System.out.println(complaint);
                            found = true;
                        }
                    }
                    if (!found) {
                        System.out.println("No Complaints Assigned");
                    }
                    break;
                case 2:
                    System.out.print("Enter Complaint ID: ");
                    int commentId = input.nextInt();
                    input.nextLine();
                    boolean commentFound = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == commentId &&
                                complaint.getAssignedStaff().equalsIgnoreCase(staffName)) {
                            if (complaint.getStatus().equals("CLOSED")) {
                                System.out.println("Cannot Modify Closed Complaint");
                                return;
                            }
                            System.out.print("Enter Comment: ");
                            String comment = input.nextLine();
                            complaint.addComment(comment);
                            System.out.println("Comment Added Successfully");
                            commentFound = true;
                        }
                    }
                    if (!commentFound) {
                        System.out.println("Complaint Not Assigned To You");
                    }
                    break;
                case 3:
                    System.out.print("Enter Complaint ID: ");
                    int closeId = input.nextInt();
                    boolean closeFound = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == closeId &&
                                complaint.getAssignedStaff()
                                        .equalsIgnoreCase(staffName)) {
                            if (complaint.getStatus()
                                    .equals("CLOSED")) {
                                System.out.println("Already Closed");
                            } else {
                                complaint.setStatus("CLOSED");
                                System.out.println("Complaint Closed Successfully");
                            }
                            closeFound = true;
                        }
                    }
                    if (!closeFound) {
                        System.out.println("Complaint Not Assigned To You");
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
}
