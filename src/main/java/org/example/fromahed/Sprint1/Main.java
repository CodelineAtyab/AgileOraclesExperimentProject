package org.example.fromahed.Sprint1;

import java.util.Scanner;
public class Main {
        public static void main(String[] args) {
            //Declaration
            Scanner inputCus = new Scanner(System.in);
            boolean mainMenuRunning = true;

            //input
            while (mainMenuRunning) {
                System.out.println("Here we have your menu:\n 1.Customer\n 2.Admin\n 3.Support\n 4.Exit");
                System.out.println("Enter your options: ");
                int userChose = Integer.parseInt(inputCus.nextLine());
                //if user choice num1 will display customer menu
                if (userChose == 1) {
                    System.out.println("Customer Menu");
                }
                //if user choice num2 will display Admin menu
                else if (userChose == 2) {
                    System.out.println("Admin Menu");
                }
                //if user choice num3 will display Support menu
                else if (userChose == 3) {
                    System.out.println("Support Menu");
                } else {
                    System.out.println(" \"Good bye\" ");
                    mainMenuRunning = false;
                }

            }
        }
}
