package org.example.fromtibyan.CLIERP;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        boolean running = true;

        while (running) {
            System.out.println("######### MAIN MENU #########");
            System.out.println("1.Customer \n2.Admin \n3.Support Staff \n4.Exit");
            System.out.println("#############################");
            if (userInput.hasNextInt()) {
                int option = userInput.nextInt();
                if (option == 1) {
                    CustomerMenu.main();
                } else if (option == 2) {
                    AdminMenu.main();
                } else if (option == 3) {
                    //support staff menu
                    System.out.println("Welcome to Staff Support menu!");
                } else if (option == 4) {
                    System.out.println("Exiting the application. Goodbye!");
                    running = false;
                } else {
                    System.out.println("Please choose a number between 1-4");
                }
            } else {
                System.out.println("Invalid option! please choose a valid option");
                userInput.next();
            }
        }
    }
}
