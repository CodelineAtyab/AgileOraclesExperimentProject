package org.example.fromkhadija.sprint2;


import java.util.HashMap;
import java.util.Scanner;

public class Admin_Module {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        boolean AdminRunning = true;

        // LIST INCLODE ID AND COMPALINTS
        HashMap<Integer, String> complaints = new HashMap<Integer, String>();
        complaints.put(101, " Long Wait Times");
        complaints.put(102, " Poor Product Quality");
        complaints.put(103, " Misleading Product Descriptions");
        complaints.put(104, " Poor Product Quality");
        complaints.put(105, " Misleading Product Details");

        // LIST INCLODE ID AND COMPALINTS STATUS
        HashMap<Integer, String> complaintsStatus = new HashMap<Integer, String>();
        complaintsStatus.put(101, " OPEN");
        complaintsStatus.put(102, " OPEN");
        complaintsStatus.put(103, " OPEN");
        complaintsStatus.put(104, " OPEN");
        complaintsStatus.put(105, " OPEN");


        // Protect Admin module with a PIN.
        System.out.println("............Admin............");

        System.out.println("Enter PIN number: ");
        int userPin = Integer.parseInt(input.nextLine());

        while (userPin != 12345) {

            System.out.println("Unsuccessful Login :( Try again.");
            System.out.println("Enter PIN : ");
            userPin = Integer.parseInt(input.nextLine());

        }

        System.out.println("Successful Login :) ");

        while (AdminRunning) {
            System.out.println("Admin choices:\n1. View all complaints.\n" +
                    "2. Search complaint by ID.\n" +
                    "3. Close a complaint.\n" + "4. Support Staff.\n5. Exit.");

            int Adminchoice = Integer.parseInt(input.nextLine());

            // View all complaints
            if (Adminchoice == 1) {
                System.out.println("*********** View all complaints ***********");
                System.out.println(" The complaints list: \n" + complaints);

                // Search complaint by ID
            } else if (Adminchoice == 2) {
                System.out.println("*********** Search complaint by ID ***********");
                System.out.println("Enter ID for search: ");
                int id = Integer.parseInt(input.nextLine());

                // Search complaint by ID.
                if (complaints.containsKey(id)) {
                    String complaint = complaints.get(id);
                    System.out.println(complaint);
                } else {
                    System.out.printf(" This Id: %d does not exist.", id);
                }

                // Check The Status of complaint
            } else if (Adminchoice == 3) {
                System.out.println("*********** Close a complaint. ***********");
                //Here the list of complaints status before any changes
                System.out.println(" The Complaints Status list before any changes:\n  " + complaintsStatus);

                System.out.println("Enter The ID to Check The Status Of Complaint:  ");
                int id = Integer.parseInt(input.nextLine());

                if (complaintsStatus.equals("CLOSE")) {

                    System.out.printf("This ID: %d --> Already CLOSED", id);
                }

                // Update the status if it is OPEN --> CLOSE
                else {
                    complaintsStatus.replace(id, "CLOSE");
                    System.out.printf("%d --> It is Successfuly *CLOSED*\n", id);
                    System.out.println("The Compalints Status List After Changing --->" + complaintsStatus);
                }
            }

            // Task 4: Support Staff
            else if (Adminchoice == 4) {
                System.out.println("*********** Support Staff. ***********");

                // Assignments List
                // Admin can assign complaints to support staff members.
                System.out.println("assign complaints to support staff members: ");
                HashMap<Integer, String> assignments = new HashMap<>();

                for (int id = 101; id <= 105; id++) {
                    // Check if ID exists in our records
                    if (!complaintsStatus.containsKey(id)) {
                        System.out.println("Complaint ID " + id + " does not exist.");

                    }

                    // Check if the status is "CLOSE"
                    // Prevent assigning: 1. Non-existing complaints 2. Closed complaints
                    String status = complaintsStatus.get(id);
                    if ("CLOSE".equalsIgnoreCase(status)) {
                        System.out.printf("This ID: %d --> Already CLOSED. Assignment not allowed.%n", id);
                    } else {
                        // If ID exists and is OPEN, ask for staff name
                        System.out.print(id + " (Assign to): ");
                        String complainStaff = input.nextLine();
                        assignments.put(id, complainStaff);
                    }
                }

                // Admin can view assignments clearly.
                System.out.println("\nFinal Assignments: " + assignments);
            }

            // Prevent assigning: 1. Non-existing complaints 2. Closed complaints
            if (complaintsStatus.equals("CLOSE")) {
                System.out.println("This ID: %d --> Already CLOSED");

            } else if (Adminchoice == 5) {
                System.out.println("Exit.");
                AdminRunning = false;
            }
        }
    }
}