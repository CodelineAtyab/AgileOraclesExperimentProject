package org.example.fromabdullahalhadabi;
import java.util.Scanner;
public class ProjectSetup {
    public static void main(String[] args) {


        Scanner sc = new Scanner(System.in);

        boolean running = true;

        while (running) {

            System.out.println("Main Menu:");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("5. choose :");
            System.out.print("Choose an option: ");

            int choice = sc.nextInt();


            if (choice == 1) {
                System.out.println("Customer menu (coming soon)");

            } else if (choice == 2) {
                System.out.println("Admin menu (coming soon)");

            } else if (choice == 3) {
                System.out.println("Support Staff menu (coming soon)");

            } else if (choice == 4) {
                System.out.println("Exiting application...");
                running = false;

            } else {
                System.out.println("Invalid choice. Please select 1–4.");
            }
            System.out.println();
        }


        sc.close();
        System.out.println("Application closed successfully.");

    }




}