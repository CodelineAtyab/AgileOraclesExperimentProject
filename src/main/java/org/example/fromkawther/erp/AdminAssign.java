package org.example.fromkawther.erp;
import java.util.*;
public class AdminAssign {
    public static void main (String[] args) {
        Scanner Sc = new Scanner(System.in);
        final String ADMIN_PIN = "1,2,3";
        //complaints:
        int[] complaintIds = {1, 2, 3};
        String[] complaints = {
                "Complaint 1 Description",
                "Complaint 2 Description",
                "Complaint 3 Description" };

        String[] complaintStatus = {"OPEN", "CLOSED", "OPEN" };
        int[] assignedStaff = {-1, -1, -1};
        int numberOfStaff = 3;
        //admin:
        System.out.print("Enter Admin PIN :");
        String pin = Sc.nextLine();
        if (!pin.equals(ADMIN_PIN)) {
            System.out.println("Incorrect PIN ");
            Sc.close();
            return;

        }
        System.out.println("Access ");
        boolean running = true;
        while (running) {


            System.out.println("\n ====Admin menu=====");
            System.out.println("1. view all complaints");
            System.out.println("2. search complaint");
            System.out.println("close complaint");
            System.out.println("Assign complaint");
            System.out.println("Exit");
            System.out.println("choose an option :");

            int choice = Sc.nextInt();
            Sc.nextLine();
            switch (choice) {
                case 1:

                    for (int i = 0; i < complaintIds.length; i++) {
                        String staffInfo = assignedStaff[i] == -1 ? "Not assigned" : "Assigned to Staff " + assignedStaff[i];
                        System.out.println("Complaint ID: " + complaintIds[i] +
                                " | " + complaints[i] +
                                " | Status: " + complaintStatus[i] +
                                " | " + staffInfo);
                    }
                    break;
                case 2:
                    System.out.print("Enter complaint ID to search:");
                    int searchID = Sc.nextInt();
                    Sc.nextLine();
                    boolean found = false;
                    for (int i = 0; i < complaintIds.length; i++) {
                        if (complaintIds[i] == searchID) {
                            String staffInfo = assignedStaff[i] == -1 ? "Not assigned" : "Assigned to Staff " + assignedStaff[i];
                            System.out.println("Complaint: " + complaints[i] +
                                    " | Status: " + complaintStatus[i] +
                                    " | " + staffInfo);
                            found = true;
                            break;
                        }}
                            case 3:
                                System.out.print("Enter complaint ID to close: ");
                                int closeId = Sc.nextInt();
                                Sc.nextLine();
                                found = false;
                                for (int i = 0; i < complaintIds.length; i++) {
                                    if (complaintIds[i] == closeId) {
                                        if (complaintStatus[i].equals("CLOSED")) {
                                            System.out.println("Complaint is already CLOSED.");
                                        } else {
                                            complaintStatus[i] = "CLOSED";
                                            System.out.println("Complaint closed successfully.");
                                        }
                                        found = true;
                                        break;
                                    }
                                }
                                if (!found) {
                                    System.out.println("Complaint not found.");
                                }
                                break;
                            case 4:
                                System.out.print("Enter complaint ID to assign: ");
                                int assignId = Sc.nextInt();
                                Sc.nextLine();
                                found = false;
                                for (int i = 0; i < complaintIds.length; i++) {
                                    if (complaintIds[i] == assignId) {
                                        found = true;
                                        if (complaintStatus[i].equals("CLOSED")) {
                                            System.out.println("Cannot assign CLOSED complaint.");
                                        } else {
                                            System.out.print("Enter staff number to assign (1-" + numberOfStaff + "): ");
                                            int staffChoice = Sc.nextInt();
                                            Sc.nextLine();
                                            if (staffChoice >= 1 && staffChoice <= numberOfStaff) {
                                                assignedStaff[i] = staffChoice;
                                                System.out.println("Complaint assigned successfully to Staff " + staffChoice);
                                            } else {
                                                System.out.println("Invalid staff number.");
                                            }
                                        }
                                        break;
                                    }
                                }
                                if (!found) {
                                    System.out.println("Complaint not found.");
                                }
                                break;
                            case 5:
                                running = false;
                                System.out.println("Exiting");
                            default:
                                System.out.println("invalid choice");

                        }
                    }


                    Sc.close();
            }
        }
