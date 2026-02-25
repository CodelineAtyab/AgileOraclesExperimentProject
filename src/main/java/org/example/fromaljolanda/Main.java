package org.example.fromaljolanda;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in); // Scanner to read user input
        boolean mainMenuRunning = true; // Controls Main Menu Loop
        // ================= MAIN MENU =================
        while (mainMenuRunning) {
            System.out.println("================= MAIN MENU =================");
            System.out.print("Please Select Option:\n" +
                    "1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit\n" +
                    "Enter your choice: ");

            // Check if user entered a number
            if (input.hasNextInt()) {
                int userChoice = Integer.parseInt(input.next());
                // ================= Customer MENU =================
                if (userChoice == 1) {
                    System.out.println("Customer Module Selected.");
                }
                // ================= Admin MENU =================
                else if (userChoice == 2) {
                    System.out.println("Admin Module Selected.");
                }
                // ================= Support Staff MENU =================
                else if (userChoice == 3) {
                    System.out.println("Support Staff Module Selected.");
                }
                // ================= Exit =================
                else if (userChoice == 4) {
                    System.out.println("Exiting system... Goodbye!");
                    mainMenuRunning = false;
                } else {
                    System.out.println("Invalid option! Please select between 1-4.");
                }
            }
            else {
                System.out.println("Invalid input! Please enter a number.");
                input.nextLine(); // clear invalid input
            }
            System.out.println();
        }
    }
}
