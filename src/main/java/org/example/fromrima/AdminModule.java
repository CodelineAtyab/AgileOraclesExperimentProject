package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class AdminModule {
    public static void main() {
        CliErp cliErpObjects=new CliErp();
        Scanner inputBuffObj = new Scanner(System.in);
        System.out.println("-----Admin Menu----");
        System.out.println("Enter Admin PIN: ");
        int adminPIN = inputBuffObj.nextInt();

        if (adminPIN == 1234) {
            System.out.println(" 1.View all complaints.\n 2.Search complaint by ID.\n 3.Close a complaint.");
            System.out.print("Enter choice: ");
            int adminChoice = inputBuffObj.nextInt();

            if (adminChoice == 1) {
                System.out.println("--- All Complaints ---");
                if(cliErpObjects.customerComplaintId.isEmpty()) {
                    System.out.println("No complaints found.");
                } else {
                    for (int i = 0; i < cliErpObjects.customerComplaintId.size(); i++) {
                        System.out.println("Complaint ID: " + cliErpObjects.customerComplaintId.get(i) +
                                " | Status: " + cliErpObjects.customerComplaintStatus.get(i) +
                                " | Desc: " + cliErpObjects.customerComplaintDescriptions.get(i));
                    }
                }

            } else if (adminChoice == 2) {
                System.out.print("Enter Complaint ID to search: ");
                int searchID = inputBuffObj.nextInt();
                boolean found = false;

                for (int i = 0; i < cliErpObjects.customerComplaintId.size(); i++) {
                    if (cliErpObjects.customerComplaintId.get(i) == searchID) {
                        System.out.println("\n--- Ticket Found ---");
                        System.out.println("ID: " + cliErpObjects.customerComplaintId.get(i));
                        System.out.println("Description: " + cliErpObjects.customerComplaintDescriptions.get(i));
                        System.out.println("Priority: " + cliErpObjects.customerComplaintPriorities.get(i));
                        System.out.println("Status: " + cliErpObjects.customerComplaintStatus.get(i));
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    System.out.println("Error: Complaint ID " + searchID + " not found.");
                }

            } else if (adminChoice == 3) {
                System.out.print("Enter Complaint ID to close: ");
                int closeID = inputBuffObj.nextInt();
                boolean found = false;

                for (int i = 0; i < cliErpObjects.customerComplaintId.size(); i++) {
                    if (cliErpObjects.customerComplaintId.get(i) == closeID) {
                        cliErpObjects.customerComplaintStatus.set(i, "CLOSED");
                        System.out.println("Success: Complaint ID " + closeID + " has been closed.");
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    System.out.println("Error: Complaint ID " + closeID + " not found.");
                }
            } else {
                System.out.println("Invalid choice!");
            }
        } else {
            System.out.println("Incorrect PIN");
        }

        inputBuffObj.close();
    }
}

