package org.example.fromabdullahalhadabi;

import java.util.Scanner;

public class ProjectSetup {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        boolean running = true;

        while (running) {
            System.out.println("\n=== Main Menu ===");
            System.out.println("1. Customer (separate module)");
            System.out.println("2. Admin (coming soon)");
            System.out.println("3. Support Staff (coming soon)");
            System.out.println("4. Exit");
            System.out.print("Choose: ");

            if (!sc.hasNextInt()) {
                System.out.println("Invalid input! Enter number 1-4.");
                sc.nextLine();
                continue;
            }

            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Run CustomerModule.java separately.");
                    break;
                case 2:
                    System.out.println("Admin module (coming soon).");
                    break;
                case 3:
                    System.out.println("Support Staff module (coming soon).");
                    break;
                case 4:
                    running = false;
                    System.out.println("Goodbye!");
                    break;
                default:
                    System.out.println("Invalid choice!");
            }
        }

        sc.close();
        System.out.println("Application closed.");
    }
}