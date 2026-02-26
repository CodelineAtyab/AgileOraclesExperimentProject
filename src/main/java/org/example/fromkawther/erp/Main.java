package org.example.fromkawther.erp;

import java.util.Scanner;

public class Main {

 public static void main(String[] args) {

            Scanner scanner = new Scanner(System.in);
            boolean running = true;
            while (running) {
                System.out.println("\n===== Mini ERP Main Menu =====");
                System.out.println("1. Customer");
                System.out.println("2. Admin");
                System.out.println("3. Support Staff");
                System.out.println("4. Exit");
                System.out.print("Enter your choice: ");

                String input = scanner.nextLine();

                switch (input) {
                    case "1":
                        showCustomerMenu(scanner);
                        break;
                    case "2":
                        showAdminMenu(scanner);
                        break;
                    case "3":
                        showSupportMenu(scanner);
                        break;
                    case "4":
                        System.out.println("Exiting application. Goodbye!");
                        running = false; // end program
                        break;
                    default:
                        System.out.println("Invalid choice. Please select a valid menu option.");
                }
            }

            scanner.close();
        }

    public static void showCustomerMenu(Scanner scanner) {
        boolean inCustomerMenu = true;
        while (inCustomerMenu) {
            System.out.println("\n--- Customer Menu ---");
            System.out.println("1. View Products (Placeholder)");
            System.out.println("2. Place Order (Placeholder)");
            System.out.println("3. Back to Main Menu");
            System.out.print("Enter your choice: ");

            String choice = scanner.nextLine();
            switch (choice) {
                case "1":
                    System.out.println("Viewing products... (functionality to be added)");
                    break;
                case "2":
                    System.out.println("Placing order... (functionality to be added)");
                    break;
                case "3":
                    inCustomerMenu = false; // back to mune
                    break;
                default:
                    System.out.println("Invalid choice. Please select a valid menu option.");
            }
        }
    }

    public static void showAdminMenu(Scanner scanner) {
        boolean inAdminMenu = true;
        while (inAdminMenu) {
            System.out.println("\n--- Admin Menu ---");
            System.out.println("1. Manage Users (Placeholder)");
            System.out.println("2. Manage Products (Placeholder)");
            System.out.println("3. Back to Main Menu");
            System.out.print("Enter your choice: ");

            String choice = scanner.nextLine();
            switch (choice) {
                case "1":
                    System.out.println("Managing users... (functionality to be added)");
                    break;
                case "2":
                    System.out.println("Managing products... (functionality to be added)");
                    break;
                case "3":
                    inAdminMenu = false;
                    break;
                default:
                    System.out.println("Invalid choice. Please select a valid menu option.");
            }
        }
    }

    public static void showSupportMenu(Scanner scanner) {
        boolean inSupportMenu = true;
        while (inSupportMenu) {
            System.out.println("\n--- Support Staff Menu ---");
            System.out.println("1. View Support Tickets (Placeholder)");
            System.out.println("2. Respond to Tickets (Placeholder)");
            System.out.println("3. Back to Main Menu");
            System.out.print("Enter your choice: ");

            String choice = scanner.nextLine();
            switch (choice) {
                case "1":
                    System.out.println("Viewing tickets... (functionality to be added)");
                    break;
                case "2":
                    System.out.println("Responding to tickets... (functionality to be added)");
                    break;
                case "3":
                    inSupportMenu = false;
                    break;
                default:
                    System.out.println("Invalid choice. Please select a valid menu option.");
            }
        }
    }
}





