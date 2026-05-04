package org.example.fromkawther.erp;

import java.util.Scanner;

public class Cli3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int id = 1;
        String description = "Network Issue";
        String status = "OPEN";

        System.out.print("Enter PIN: ");
        int pin = sc.nextInt();

        if (pin != 1234) {
            System.out.println("Wrong PIN");
            return;
        }

        int choice = 0;
        while (choice != 4) {
            System.out.println("\n1. View");
            System.out.println("2. Search");
            System.out.println("3. Close");
            System.out.println("4. Exit");
            System.out.print("Choose: ");

            choice = sc.nextInt();

            if (choice == 1) {
                System.out.println("ID: " + id + " | Desc: " + description + " | Status: " + status);

            } else if (choice == 2) {
                System.out.print("Enter ID: ");
                int searchId = sc.nextInt();

                if (searchId == id) {
                    System.out.println("Found! Task: " + description);
                } else {
                    System.out.println("Not found");
                }

            } else if (choice == 3) {
                System.out.print("Enter ID to close: ");
                int closeId = sc.nextInt();

                if (closeId == id) {
                    status = "CLOSED";
                    System.out.println("Done! Status is now CLOSED");
                } else {
                    System.out.println("ID not found");
                }

            } else if (choice == 4) {
                System.out.println("Bye!");
            }
        }
        sc.close();
    }
}