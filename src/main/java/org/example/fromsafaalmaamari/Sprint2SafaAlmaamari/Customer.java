
package org.example.fromsafaalmaamari.Sprint2SafaAlmaamari;

import java.util.ArrayList;
import java.util.Scanner;

public class Customer {
    public static void main(String[] args) {
        Scanner scanner = new Scanner((System.in));
        boolean keepRunning = true;
        ArrayList<String> complaints = new ArrayList<>();

        while (keepRunning) {

            System.out.println(" Main Menu: ");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("Choose an Option: ");
            int userOption = scanner.nextInt();

            if (userOption == 1) {

                boolean keepRunningForOp1 = true;
                System.out.println("Customer Module ");
                int complaintId = 0;
                while (keepRunningForOp1) {
                    System.out.print("Enter Complaint ID: ");
                    if (scanner.hasNextInt()) {
                        complaintId = scanner.nextInt();
                        keepRunningForOp1 = false;
                    } else{
                        System.out.println("Invalid Input please try again");
                        scanner.next();
                    }
                }
                scanner.nextLine();
                System.out.print("Enter Complaint Description: ");
                String complaintDesc = scanner.nextLine();
                System.out.println("Select Priority: ");
                System.out.println("1. LOW");
                System.out.println("2. MEDIUM (default)");
                System.out.println("3. HIGH");
                System.out.println("Select priority");
                String selectedPriority = scanner.nextLine();

                String priority;

                if (selectedPriority == "1") {
                    priority = "LOW";
                }else if (selectedPriority == "3"){
                    priority ="HIGH";
                }else {
                    priority ="MEDIUM";
                }

                String complaint = "Complaint ID:" + complaintId + ", complaint Description:" + complaintDesc + ", priority:" + priority;
                complaints.add(complaint);

                System.out.println(" Complaint Created Successfully..");
                System.out.println();

            } else if (userOption == 2) {
                System.out.println("Admin Option");
            } else if (userOption == 3) {
                System.out.println("Support Staff option");
            } else if (userOption == 4) {
                System.out.println(" Exit...");
                keepRunning = false;
            } else {
                System.out.println("invalid option");
            }


        }
    }
}




