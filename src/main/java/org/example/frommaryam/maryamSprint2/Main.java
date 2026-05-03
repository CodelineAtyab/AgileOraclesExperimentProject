package org.example.frommaryam.maryamSprint2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        boolean keepRunning = true;
        while (keepRunning) {

            System.out.println("Welcome to the Main Menu :)");
            System.out.println("1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit");

            System.out.print("Please Enter Your Choice Here: ");
            int userChoise = SC.nextInt();

            if (userChoise == 1) {
                System.out.println("Hello Customer, sorry no other option now, we will take you to main menu");
            }
            else if (userChoise == 2) {
                System.out.println("Hello Admin, sorry no other option now, we will take you to main menu");
            }
            else if (userChoise == 3) {
                System.out.println("Hello Support Staff, sorry no other option now, we will take you to main menu");

            }
            else if (userChoise == 4) {
                System.out.println("You are Out");
                keepRunning = false;
            }
            else {
                System.out.println("non-existing menu options, choose a valid option please");
            }

        }
    }
}
