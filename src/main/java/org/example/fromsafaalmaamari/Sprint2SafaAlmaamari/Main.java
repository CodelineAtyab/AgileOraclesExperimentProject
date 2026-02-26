package org.example.fromsafaalmaamari.Sprint2SafaAlmaamari;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner((System.in));
        boolean keepRunning = true;

        while (keepRunning) {

            System.out.println(" Main Menu: ");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("Choose an Option: ");
            int userOption = scanner.nextInt();

            if (userOption == 1) {
                System.out.println("Customer Option");
            } else if (userOption == 2) {
                System.out.println("Admin Option");
            } else if (userOption == 3) {
                System.out.println("Support Staff option");
            } else if (userOption == 4) {
                System.out.println(" Exit...");
                keepRunning = false;
            } else {
                System.out.println("invalid option");
            }


        }
    }
}


