package org.example.fromtibyan.CLIERP;

import java.util.Scanner;

public class SupportStaffMenu {
    public static void main() {
        Scanner userInput = new Scanner(System.in);
        System.out.println("##### Welcome to Support Staff menu #####");
        System.out.println("Enter your name: ");
        String staffName = userInput.nextLine();

        while (true){
            System.out.printf("##### Welcome %s #####%n", staffName);
            System.out.println("1.View assigned complaints");
            System.out.println("2.Add a comment to a complaint");
            System.out.println("3.Close an assigned complaint");
            System.out.println("4.Back to Main Menu");
            System.out.println("####################################");
            System.out.print("Enter your choice: ");
            if (userInput.hasNextInt()){
                int staffChoice = userInput.nextInt();
                if (staffChoice == 1) {
                    System.out.printf("---- Complaint tickets assigned to %s ----%n", staffName);
                    boolean found = false;
                    for (Complaints assignedStaff : CustomerMenu.Tickets) {
                        if (staffName.equals(assignedStaff.getAssignedStaff())) {
                            found = true;
                            System.out.println("Complaint ID: " + assignedStaff.getComplaintId());
                            System.out.println("Complaint Description: " + assignedStaff.getComplaintDescription());
                            System.out.println("Complaint Priority: " + assignedStaff.getComplaintPriority());
                            System.out.println("Complaint Status: " + assignedStaff.getComplaintStatus());
                            System.out.println("Comments: " + assignedStaff.getStaffComments());
                            System.out.println("-------------------------------------------------");
                        }
                    }
                    if (!found) {
                        System.out.printf("No complaint tickets assigned to %s%n", staffName);
                    }
                } else if (staffChoice == 2) {
                    System.out.println("---- Adding comments to a complaint ticket ----");
                    boolean commentsPageRunning = true;
                    while (commentsPageRunning){
                        System.out.print("Type complaint ID of ticket you want to add comment to: ");

                        if (!userInput.hasNextInt()) {
                            System.out.println("Please enter a valid Complaint ID.");
                            userInput.next();
                            SupportStaffMenu.main();
                        }
                        int staffComplaintID = userInput.nextInt();
                        userInput.nextLine();
                        boolean found = false;
                        for (Complaints assignedStaff : CustomerMenu.Tickets) {
                            if (staffName.equals(assignedStaff.getAssignedStaff()) &&
                                    staffComplaintID == assignedStaff.getComplaintId() &&
                                    assignedStaff.getComplaintStatus().equals("OPEN")) {
                                found = true;
                                System.out.println("Complaint ID: " + assignedStaff.getComplaintId());
                                System.out.println("Complaint Description: " + assignedStaff.getComplaintDescription());
                                System.out.println("Complaint Priority: " + assignedStaff.getComplaintPriority());
                                System.out.println("Complaint Status: " + assignedStaff.getComplaintStatus());
                                System.out.println("Please Type your comment: ");
                                String staffComment = userInput.nextLine();
                                assignedStaff.setStaffComments(staffComment);
                                System.out.println("Comment successfully added!");
                                System.out.println("-------------------------------------------------");
                                commentsPageRunning = false;
                            }
                        } if (!found) {
                            System.out.println("Complaint ticket is not assigned to you/Complaint ticket does not exist or is already closed");
                        }
                    }
                } else if (staffChoice == 3) {
                    System.out.println("---- Closing a complaint ticket ----");
                    boolean closingPageRunning = true;
                    while (closingPageRunning){
                        System.out.print("Type complaint ID of ticket to be closed: ");

                        if (!userInput.hasNextInt()) {
                            System.out.println("Please enter a valid Complaint ID.");
                            userInput.next();
                            SupportStaffMenu.main();
                        }
                        int staffComplaintID = userInput.nextInt();
                        boolean found = false;
                        for (Complaints assignedStaff : CustomerMenu.Tickets) {
                            if (staffName.equals(assignedStaff.getAssignedStaff()) &&
                                    staffComplaintID == assignedStaff.getComplaintId() &&
                                    assignedStaff.getComplaintStatus().equals("OPEN")) {
                                found = true;
                                System.out.println("Complaint ID: " + assignedStaff.getComplaintId());
                                System.out.println("Complaint Description: " + assignedStaff.getComplaintDescription());
                                System.out.println("Complaint Priority: " + assignedStaff.getComplaintPriority());
                                assignedStaff.setComplaintStatus("CLOSED");
                                System.out.println("Complaint Status: " + assignedStaff.getComplaintStatus());
                                System.out.println("Comments:" +assignedStaff.getStaffComments());
                                System.out.println("-------------------------------------------------");
                                System.out.println("Complaint ticket successfully closed");
                                closingPageRunning = false;
                            }
                        } if (!found) {
                            System.out.println("Complaint ticket is not assigned to you/Complaint ticket does not exist or is already closed");
                        }
                    }

                } else if (staffChoice == 4) {
                    Main.mainMenu();
                } else {
                    System.out.println("Choose an option between 1-4.");
                }
            }else {
                System.out.println("Enter a valid option");
                userInput.next();
            }
        }
    }
}
