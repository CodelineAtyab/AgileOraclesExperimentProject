package org.example.fromkawther.erp;

import java.util.ArrayList;
import java.util.Scanner;
public class costomer {


        public static void main(String[] args) {

            Scanner sc = new Scanner(System.in);

            String correctPin = "1234";


            ArrayList<Complaint> complaints = new ArrayList<>();

            complaints.add(new Complaint(1, "Internet issue"));
            complaints.add(new Complaint(2, "Login problem"));
            complaints.add(new Complaint(3, "Payment error"));

            System.out.print("Enter Admin PIN: ");
            String pin = sc.nextLine();

            if (pin.equals(correctPin)) {
                System.out.println("Wrong PIN! Access Denied.");
                return;
            }

            System.out.println("Access Granted!");

            int choice = 0;

            while (choice != 4) {
                System.out.println("\n=== Admin Menu ===");
                System.out.println("1. View All Complaints");
                System.out.println("2. Search Complaint by ID");
                System.out.println("3. Close Complaint");
                System.out.println("4. Exit");
                System.out.print("Enter your choice: ");
                choice = sc.nextInt();
                sc.nextLine();

                if (choice == 1) {
                    for (Complaint c : complaints) {
                        System.out.println("ID: " + c.id);
                        System.out.println("Description: " + c.description);
                        System.out.println("Status: " + c.status);
                        System.out.println("-------------------");
                    }

                } else if (choice == 2) {
                    System.out.print("Enter Complaint ID: ");
                    int id = sc.nextInt();
                    sc.nextLine();

                    boolean found = false;
                    for (Complaint c : complaints) {
                        if (c.id == id) {
                            System.out.println("Complaint Found:");
                            System.out.println("Description: " + c.description);
                            System.out.println("Status: " + c.status);
                            found = true;
                            break;
                        }
                    }
                    if (found) {
                        System.out.println("Complaint not found.");
                    }

                } else if (choice == 3) {
                    System.out.print("Enter Complaint ID to close: ");
                    int id = sc.nextInt();
                    sc.nextLine();

                    boolean found = false;
                    for (Complaint c : complaints) {
                        if (c.id == id) {
                            found = true;
                            if (c.status.equals("CLOSED")) {
                                System.out.println("Complaint already CLOSED!");
                            } else {
                                c.status = "CLOSED";
                                System.out.println("Complaint closed successfully.");
                            }
                            break;
                        }
                    }
                    if (found) {
                        System.out.println("complaint not found");
                    }
                } else if (choice == 4) {
                   System.out.println("Exiting Admin module");
                } else {
                  System.out.println("Invalid choice");
                }
            }
        }
    }

    class Complaint {
        int id;
        String description;
        String status;

        public Complaint (int id, String description){
            this.id = id;
            this.description = description;
            this.status = "Open";

        }
    }

