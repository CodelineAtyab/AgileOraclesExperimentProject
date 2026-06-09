package org.example.fromrima;

import java.util.Scanner;

public class StaffModule {
    public static void staffMenu(ArrayList<Complaint> complaints) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter Staff Name: ");
        String staffName = input.nextLine();

        while (true) {
            System.out.println("\n----- Support Staff Menu -----");
            System.out.println("1. View My Complaints");
            System.out.println("2. Add Comment");
            System.out.println("3. Close Complaint");
            System.out.println("4. Back");
            int choice = input.nextInt();
            input.nextLine();
            switch (choice) {
                case 1:
                    boolean found = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getAssignedStaff().equalsIgnoreCase(staffName)) {
                            System.out.println(complaint);
                            System.out.println("----------------");
                            found = true;
                        }
                    }
                    if (!found) {
                        System.out.println("No complaints assigned.");
                    }
                    break;
                case 2:
                    System.out.print("Enter Complaint ID: ");
                    int commentId = input.nextInt();
                    input.nextLine();
                    boolean commentAdded = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == commentId && complaint.getAssignedStaff().equalsIgnoreCase(staffName)) {
                            if (complaint.getStatus().equals("CLOSED")) {
                                System.out.println("Cannot modify closed complaint.");
                                commentAdded = true;
                                break;
                            }
                            System.out.print("Enter Comment: ");
                            String comment = input.nextLine();
                            complaint.addComment(comment);
                            System.out.println("Comment added successfully.");
                            commentAdded = true;
                            break;
                        }
                    }
                    if (!commentAdded) {
                        System.out.println("Complaint not assigned to you.");
                    }
                    break;
                case 3:
                    System.out.print("Enter Complaint ID: ");
                    int closeId = input.nextInt();
                    boolean closed = false;
                    for (Complaint complaint : complaints) {
                        if (complaint.getComplaintId() == closeId && complaint.getAssignedStaff().equalsIgnoreCase(staffName)) {
                            if (complaint.getStatus().equals("CLOSED")) {
                                System.out.println("Complaint already closed.");
                                closed = true;
                                break;
                            }
                            complaint.setStatus("CLOSED");
                            System.out.println("Complaint closed successfully.");
                            closed = true;
                            break;
                        }
                    }
                    if (!closed) {
                        System.out.println("Complaint not assigned to you.");
                    }
                    break;
                case 4:
                    return;
                default:
                    System.out.println("Invalid choice.");
            }
        }
    }
}
