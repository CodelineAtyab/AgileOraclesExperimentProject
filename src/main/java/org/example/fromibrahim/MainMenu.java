package org.example.fromibrahim;
import java.util.Scanner;

public class MainMenu {
    public static void main(String[] args) {

        Scanner inputBuffer1 = new Scanner(System.in);
        boolean mainMenuRunning = true;

        while (mainMenuRunning) {

            System.out.println("Welcome to the main menu");
            System.out.println("The available options are:\n[1] Customer\n[2] Admin\n[3] Support Stuff\n[4] Exit");
            System.out.print("Please enter the number: ");

            if (inputBuffer1.hasNextInt()) {     // Checking if the input is integer
                int userChoice = Integer.parseInt(inputBuffer1.nextLine());
                if (userChoice == 1) {
                    System.out.println("I have select Customer Menu");
                } else if (userChoice == 2) {
                    System.out.println("I have select Admin Menu");
                } else if (userChoice == 3) {
                    System.out.println("I have select Support Stuff Menu");
                } else if (userChoice == 4) {
                    System.out.println("Exiting the program ... ");
                    mainMenuRunning = false;
                } else {
                    System.out.print("Invalid Option!\n");
                    System.out.print("Please enter a number from 1 to 4!\n");
                }
            }else {                         // If the user enter anything except integer
                System.out.println("Invalid Choice !");
                inputBuffer1.nextLine();
            }
            System.out.println();
        }
    }
}

