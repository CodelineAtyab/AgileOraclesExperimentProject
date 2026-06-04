package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class AdminModule {
    public static void main(String[] args) {
        Scanner inputBuffObj = new Scanner(System.in);
        ArrayList<String> customerArray = new ArrayList<>();
        while (true) {
            System.out.println("-------- Main Menu --------");
            System.out.println(" 1. Customer\n 2. Admin\n 3. Support Staff\n 4. Exit");
            int userInput = inputBuffObj.nextInt();

            if (userInput == 2) {
                System.out.print("Enter Admin PIN: ");
                int adminPIN = inputBuffObj.nextInt();
                if (adminPIN == 1234) {
                    System.out.println(" 1.View all complaints.\n 2.Search complaint by ID.\n 3.Close a complaint.");
                    if (userInput == 1) {
                        System.out.println(customerArray);
                    } else if (userInput == 2) {

                    }
                } else {
                    System.out.println("InCorrect PIN");
                }

            }
        }
    }
}
