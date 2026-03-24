package org.example.fromsafa;

import java.util.ArrayList;
import java.util.Scanner;

public class cliapp {
//cli task
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        ArrayList<Integer> ids = new ArrayList<>();
        ArrayList<String> desc = new ArrayList<>();
        ArrayList<String> priority = new ArrayList<>();

        String[] levels = {"LOW", "MEDIUM", "HIGH"};

        int pin = 1234;
        boolean running = true;

        while (running) {

            System.out.println("\nMain Menu");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Exit");

            int choice = input.nextInt();

            // -------- CUSTOMER --------
            if (choice == 1) {

                System.out.println("1. Create Ticket");
                System.out.println("2. Back");

                int c = input.nextInt();

                if (c == 1) {

                    System.out.print("Enter ID: ");
                    int id = input.nextInt();
                    input.nextLine();

                    System.out.print("Enter Description: ");
                    String d = input.nextLine();

                    System.out.println("Select Priority:");
                    System.out.println("1. LOW");
                    System.out.println("2. MEDIUM");
                    System.out.println("3. HIGH");

                    int p = input.nextInt();

                    String pr = "MEDIUM";

                    if (p >= 1 && p <= 3) {
                        pr = levels[p - 1];
                    }

                    ids.add(id);
                    desc.add(d);
                    priority.add(pr);

                    System.out.println("Ticket created successfully!");
                }
            }

            // -------- ADMIN --------
            else if (choice == 2) {

                System.out.print("Enter PIN: ");
                int userPin = input.nextInt();

                if (userPin == pin) {

                    System.out.println("1. View Ticket");
                    System.out.println("2. Update Ticket");
                    System.out.println("3. Back");

                    int a = input.nextInt();

                    // VIEW
                    if (a == 1) {

                        System.out.print("Enter ID: ");
                        int id = input.nextInt();

                        boolean found = false;

                        for (int i = 0; i < ids.size(); i++) {

                            if (ids.get(i) == id) {

                                System.out.println("Description: " + desc.get(i));
                                System.out.println("Priority: " + priority.get(i));
                                found = true;
                            }
                        }

                        if (!found) {
                            System.out.println("Ticket not found.");
                        }
                    }

                    // UPDATE
                    else if (a == 2) {

                        System.out.print("Enter ID: ");
                        int id = input.nextInt();
                        input.nextLine();

                        for (int i = 0; i < ids.size(); i++) {

                            if (ids.get(i) == id) {

                                System.out.print("Enter new description: ");
                                String newDesc = input.nextLine();

                                desc.set(i, newDesc);

                                System.out.println("Updated successfully!");
                            }
                        }
                    }
                }

                else {
                    System.out.println("Wrong PIN!");
                }
            }

            // -------- EXIT --------
            else if (choice == 3) {
                System.out.println("Goodbye!");
                running = false;
            }

            else {
                System.out.println("Invalid choice.");
            }
        }

        input.close();
    }
}
