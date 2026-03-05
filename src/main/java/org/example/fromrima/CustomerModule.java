package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {
    public static void main(String[] args) {
        Scanner inputBuffObj = new Scanner(System.in);
        ArrayList<String> customerArray = new ArrayList<>();
        while (true) {
            System.out.println("-------- Main Menu --------");
            System.out.println(" 1. Customer\n 2. Admin\n 3. Support Staff\n 4. Exit");

            String userInput = inputBuffObj.nextLine();
            int choice;
            try {
                choice = Integer.parseInt(userInput);
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a number.");
                continue;
            }

            if (choice == 1) {

                System.out.print("Enter Complaint ID: ");
                int complaintID = inputBuffObj.nextInt();
                inputBuffObj.nextLine();
                System.out.print("Enter Complaint Description: ");
                String complaintDescription = inputBuffObj.nextLine();

                System.out.print("Select Priority [ LOW / MEDIUM (default) / HIGH ] : ");
                String complaintPriority = inputBuffObj.nextLine().toUpperCase();
                if (complaintPriority.isEmpty() || (!complaintPriority.equals("LOW") && !complaintPriority.equals("HIGH"))) {
                    complaintPriority = "MEDIUM";
                }


                customerArray.add(complaintID + complaintDescription + complaintPriority);
                System.out.println("confirmation");

            }

            if (choice == 2) {
                System.out.print("Enter Admin PIN: ");
                int adminPIN = inputBuffObj.nextInt();
                if (adminPIN == 1234) {
                    System.out.println(" 1.View all complaints.\n 2.Search complaint by ID.\n 3.Close a complaint.");
                    if (choice == 1) {
                        System.out.println(customerArray);
                    } else if (choice == 2) {

                    }
                } else {
                    System.out.println("InCorrect PIN");
                }


            }
        }
    }
}