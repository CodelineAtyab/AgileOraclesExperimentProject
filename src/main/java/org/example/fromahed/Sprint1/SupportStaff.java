package org.example.fromahed.Sprint1;

import java.util.Scanner;

public class SupportStaff {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        // Admin PIN
        int correctPin = 1234;
        int pin = 0;

        int choice = 0;
        boolean menuRunning = true;


        while (pin != correctPin) {
            System.out.print("Enter the PIN:\n");
            pin = input.nextInt();
            if (pin != correctPin) {
                System.out.println("Access denied, Try again");
            }
        }
        System.out.println("Access successfully");

        // Complaint Data
        int[] id = {101, 102, 103, 104};
        String[] status = {"OPEN", "OPEN", "OPEN", "OPEN"};
        // Support Staff Data
        String[] supportStaff = {"Ali", "Safa", "Nora", "Salim"};
        //assignment mapping
        String[] assignedStaff = new String[id.length];
        String[] priority = new String[id.length];
        String[] comments = new String[id.length];


        while (menuRunning) {
            System.out.println("=================|||=================");
            System.out.println("\nAdmin Menu ");
            System.out.println("1. View All complaints");
            System.out.println("2. Search complaint by ID");
            System.out.println("3. Close a complaint");
            System.out.println("4. Assign complaint to Support Staff");
            System.out.println("5. View complaint assignments");
            System.out.println("6. Exit");
            System.out.println("=================|||=================");
            System.out.print("Choose your operation: ");
            choice = input.nextInt();

            // 1- View All complaints
            if (choice == 1) {
                for (int i = 0; i < id.length; i++) {
                    System.out.print("\nID: " + id[i] + "\tStatus: " + status[i]);

                    if (assignedStaff[i] != null) {
                        System.out.print("\tAssigned To: " + assignedStaff[i]);
                    } else {
                        System.out.print("\tAssigned To: None");
                    }
                }
                System.out.println();
            }

            // 2- Search complaint using ID
            else if (choice == 2) {
                System.out.print("Enter the Complaint ID: ");
                int searchId = input.nextInt();
                boolean found = false;

                for (int i = 0; i < id.length; i++) {
                    if (id[i] == searchId) {
                        System.out.println("Status: " + status[i]);

                        if (assignedStaff[i] != null) {
                            System.out.println("Assigned To: " + assignedStaff[i]);
                        } else {
                            System.out.println("Assigned To: None");
                        }
                        found = true;
                    }
                }
                if (!found) {
                    System.out.println("Complaint not found");
                }
            }

            // 3- Close a complaint
            else if (choice == 3) {
                System.out.print("Enter the Complaint ID to close: ");
                int closeCom = input.nextInt();
                boolean foundId = false;

                for (int i = 0; i < id.length; i++) {
                    if (id[i] == closeCom) {

                        if (status[i].equals("CLOSED")) {
                            System.out.println("Complaint already closed");
                        } else {
                            status[i] = "CLOSED";
                            System.out.println("Closed successfully");
                        }
                        foundId = true;
                    }
                }
                if (!foundId) {
                    System.out.println("Complaint not found");
                }
            }

            // 4- here we assign complaint to Support Staff
            else if (choice == 4) {
                System.out.print("Enter Complaint ID to assign: ");
                int assignId = input.nextInt();
                boolean foundId = false;

                for (int i = 0; i < id.length; i++) {
                    if (id[i] == assignId) {
                        foundId = true;
                        //Check if complaint is CLOSED Cannot assign
                        if (status[i].equals("CLOSED")) {
                            System.out.println("Cannot assign a CLOSED complaint");
                        } else {
                            // Show available staff
                            System.out.println("Available Support Staff:");
                            for (int j = 0; j < supportStaff.length; j++) {
                                System.out.println((j + 1) + "- " + supportStaff[j]);
                            }

                            System.out.print("Choose staff number: ");
                            int staffChoice = input.nextInt();

                            if (staffChoice >= 1 && staffChoice <= supportStaff.length) {
                                assignedStaff[i] = supportStaff[staffChoice - 1];
                                System.out.println("Complaint assigned successfully to "
                                        + supportStaff[staffChoice - 1]);
                                input.nextLine();
                                //enter priority you want to assign
                                System.out.println("Enter Priority (LOW / MEDIUM / HIGH) : ");
                                priority[i] = input.nextLine();

                                //enter comment for that complaint
                                System.out.println("Enter comment: ");
                                comments[i] = input.nextLine();
                                System.out.println(" complaint assigned successfully to " + supportStaff[staffChoice - 1]);

                            } else {
                                System.out.println("Invalid staff selection");
                            }
                        }
                    }
                }
                if (!foundId) {
                    System.out.println("Complaint not found");
                }
            }

            // 5- option 5 that allow you to View Assignments
            else if (choice == 5) {
                System.out.println("\n** Complaint Assignments **");
                for (int i = 0; i < id.length; i++) {

                    System.out.print("Complaint ID: " + id[i]
                            + "\nStatus: " + status[i]);

                    if (assignedStaff[i] != null) {
                        System.out.println("\nAssigned To: " + assignedStaff[i]);
                    } else {
                        System.out.println("\nAssigned To: None");
                    }
                    if (priority[i] != null) {
                        System.out.println("priority:\n " + priority[i]);
                    } else {
                        System.out.println("priority: not define");

                    }
                    if (comments[i] != null) {
                        System.out.println("comments: " + comments[i]);
                    } else {
                        System.out.println("comments: None\n");
                    }
                }
            }

            // if user choose option 6
            else {
                System.out.println("Goodbye");
                menuRunning = false;
            }
        }
    }
}
