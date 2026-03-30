package org.example.fromahed.Sprint1;

import java.util.Scanner;

public class Admin {
    public static void main(String[] args) {

        //Declare
        Scanner input = new Scanner(System.in);
        //process of admin access " enter pin ".
        int correctPin = 1234;
        int pin = 0; //pin here the entered pin if its entered false will repeat the loop until become true
        while (pin != correctPin) {
            System.out.print("Enter the PIN:\n");
            pin = input.nextInt();
            if (pin != correctPin) {
                System.out.print("Access denied, Try again");
            }
        }
        System.out.println("Access successfully");
        //for Complaint data
        //stored in array
        int[] id = {101, 102, 103, 104};
        String[] status = {"OPEN", "OPEN", "CLOSED", "CLOSED"};
        int choice = 0;

        //using while loop menu
        //!=4 means keep repeat long as user don't chose 4
        while (choice != 4) {
            System.out.println("===========|||||||===========");
            System.out.println("Admin Menu");
            System.out.println("1- View All complaints");
            System.out.println("2- Search complaint by ID");
            System.out.println("3- Close a complaint.");
            System.out.println("4- Exit");
            System.out.println("===========|||||||===========");

            System.out.print("Choose your operation: ");
            choice = input.nextInt();

            //"View All complaints".
            if (choice == 1) {
                for (int i = 0; i < id.length; i++) {
                    System.out.println("\nID: " + id[i] + "\tStatus: " + status[i]);
                }
            }
            //Search complaint by ID
            if (choice == 2) {
                System.out.print("Enter the ComplaintID: ");
                int searchId = input.nextInt();
                boolean found = false;
                for (int i = 0; i < id.length; i++) {
                    if (id[i] == searchId) {
                        System.out.println("Status: " + status[i]);
                        found = true; // pointing as found, but its continue checking
                    }
                }
                //  if no matching ID was found that entered by user
                if (!found) {
                    System.out.println("\"cant reach complaint\"");
                }
            }
            //close the complaint if its open
            if (choice == 3) {
                System.out.print("Enter the ComplaintID that's want to close it: ");
                int closeCom = input.nextInt();
                boolean foundId = false;
                for (int i = 0; i < id.length; i++) {
                    if (id[i] == closeCom) {
                        if (status[i].equals("CLOSED")) {
                            //if its already closed
                            System.out.println("\"complaint already closed\"");
                        } else {
                            status[i] = "CLOSED";
                            //its open so closed
                            System.out.println("\"closed successfully\"");
                        }
                        foundId = true;
                    }
                }
                if (!foundId) {
                    System.out.println("\"Complaint not found\"");
                }
                //for Exit
            } else if (choice == 4) {
                System.out.println("\"Goodbye\"");
            }
        }

    }
}
