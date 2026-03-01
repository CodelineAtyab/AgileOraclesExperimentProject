package org.example.fromsaif;

import java.util.Scanner;

public class cliErp {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        boolean running = true;

        while (running) {

            System.out.println("===== Main Menu =====");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.print("Please enter choice: ");

            String mainChoice = input.nextLine();

            // =================CUSTOMER MENU=================
            if (mainChoice.equals("1")) {

                boolean customerMenu = true;

                while (customerMenu) {
                    System.out.println("Customer Menu");
                    System.out.println("1. Customer Action");
                    System.out.println("2. Go back to Main Menu");
                    System.out.print("Enter choice: ");

                    String customerChoice = input.nextLine();

                    if (customerChoice.equals("1")) {
                        System.out.println("No options yet !!");
                    }
                    else if (customerChoice.equals("2")) {
                        customerMenu = false; //Goes back to main menu
                    }
                    else {
                        System.out.println("Invalid option.");
                    }
                }
            }

            // =================ADMIN MENU=================
            else if (mainChoice.equals("2")) {

                boolean adminMenu = true;

                while (adminMenu) {
                    System.out.println("Admin Menu");
                    System.out.println("1. Admin Action");
                    System.out.println("2. Go back to Main Menu");
                    System.out.print("Enter choice: ");

                    String adminChoice = input.nextLine();

                    if (adminChoice.equals("1")) {
                        System.out.println("NO options yet !!");
                    }
                    else if (adminChoice.equals("2")) {
                        adminMenu = false; //Goes back to main menu
                    }
                    else {
                        System.out.println("Invalid option.");
                    }
                }
            }

            // =================SUPPORT STAFF=================
            else if (mainChoice.equals("3")) {

                boolean supportMenu = true;

                while (supportMenu) {
                    System.out.println("Support Staff Menu");
                    System.out.println("1. Support Action");
                    System.out.println("2. Go back to Main Menu");
                    System.out.print("Enter choice: ");

                    String supportChoice = input.nextLine();

                    if (supportChoice.equals("1")) {
                        System.out.println("No options yet !!");
                    }
                    else if (supportChoice.equals("2")) {
                        supportMenu = false; //Goes back to main menu
                    }
                    else {
                        System.out.println("Invalid option.");
                    }
                }
            }

            // =================EXIT=================
            else if (mainChoice.equals("4")) {
                System.out.println("Goodbye");
                running = false;
            }

            else {
                System.out.println("Invalid choice. Try again.");
            }
        }

        input.close();
    }
}

