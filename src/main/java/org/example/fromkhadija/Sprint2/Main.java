package org.example.fromkhadija.Sprint2;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {


        Scanner input = new Scanner(System.in);
        boolean menuRunning = true;

        while (menuRunning == true) {
            System.out.println("Select from the menu: 1. Customer 2. Admin 3. Support Staff 4. Exit");
            int userChoice = Integer.parseInt(input.nextLine());

            if (userChoice == 1) {

                System.out.println("............Customer............");
            } else if (userChoice == 2) {

                System.out.println("............Admin............");
            } else if (userChoice == 3) {

                System.out.println("............Support Staff............");
            } else if (userChoice == 4) {

                System.out.println("............Exit............");

                menuRunning = false;
            }


        }


    }
}
