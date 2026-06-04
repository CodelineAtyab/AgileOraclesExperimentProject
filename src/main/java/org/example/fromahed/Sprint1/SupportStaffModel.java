package org.example.fromahed.Sprint1;

import java.util.Scanner;

public class SupportStaffModel {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        boolean menuRunning = true;

        // data refers to Staff
        String[] supportStaff = {"Ali", "Safa", "Nasser", "Salama"};
        int[] staffPin = {1122, 2233, 3344, 4455}; // each staff has a PIN

        // data for Complaints
        int[] complaintId = {101, 102, 103, 104};
        String[] comment = {"", "", "", ""};
        String[] status = {"OPEN", "OPEN", "CLOSED", "OPEN"};

        // Map staff to  their complaint IDs
        // -1 means no complaint assigned for that staff do it using index in arrays
        int[] staffComplaintIndex = {0, 1, -1, 3};

        // Login staff
        System.out.print("Enter Staff Name: ");
        String name = sc.nextLine();

        int staffIndex = -1;

        for (int i = 0; i < supportStaff.length; i++) {
            if (name.equalsIgnoreCase(supportStaff[i])) {
                staffIndex = i;
            }
        }

        if (staffIndex == -1) {
            System.out.println("Staff not found!");
            return;
        } else {
            System.out.println("Staff found!");
        }

        // Check for the PIN if It's correct or not
        System.out.print("Enter PIN: ");
        int pin = sc.nextInt();

        if (pin != staffPin[staffIndex]) {
            System.out.println("Wrong PIN!");
            return;
        }

        int choice = 0;

        // Menu loop
        while (menuRunning) {
            System.out.println("\nMenu");
            System.out.println("1. View My Complaints");
            System.out.println("2. Add Comment");
            System.out.println("3. Close Complaint");
            System.out.println("4. Exit");

            System.out.print("Choose: ");
            choice = sc.nextInt();
            sc.nextLine(); // consume newline

            if (choice == 1) {
                int complaintIndex = staffComplaintIndex[staffIndex];

                if (complaintIndex != -1) {
                    System.out.println("Complaint ID: " + complaintId[complaintIndex]);
                    System.out.println("Comment: " + comment[complaintIndex]);
                    System.out.println("Status: " + status[complaintIndex]);

                } else {
                    System.out.println("There is no complaints for you!");
                }
            }

            if (choice == 2) {

                System.out.print("Enter Complaint ID: ");
                int id = sc.nextInt();
                sc.nextLine();
                //if the staff want to add a comment
                for (int i = 0; i < complaintId.length; i++) {
                    if (complaintId[i] == id) {

                        if (status[i].equals("CLOSED")) {
                            System.out.println("You cannot add comment ,Complaint already closed!");
                        } else {
                            System.out.print("Enter your Comment: ");
                            comment[i] = sc.nextLine();
                            System.out.println("Your comment added successfully!");
                        }
                    }
                }
            }
            if (choice == 3) {
                int complaintIndex = staffComplaintIndex[staffIndex];
                //if the complaint already closed
                if (complaintIndex != -1) {
                    status[complaintIndex] = "CLOSED";
                    System.out.println("Complaint Closed!");
                } else {
                    System.out.println("complaint already closed!");
                }
            } else if (choice == 4) {
                System.out.println("Exit");
                menuRunning = false;
            }
        }

    }
}
