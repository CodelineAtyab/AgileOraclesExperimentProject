package org.example.fromkawther.erp;

import java.util.Scanner;

public class Main {

        public static void main(String[] args) {

            Scanner sc = new Scanner(System.in);

            while (true) {
                System.out.println("\nMain Menu:");
                System.out.println("1. Customer");
                System.out.println("2. Admin");
                System.out.println("3. Support Staff");
                System.out.println("4. Exit");
                System.out.print("Enter choice: ");

                int choice = sc.nextInt();

                if (choice == 4) {
                    System.out.println("Goodbye!");
                    break;
                }

    System.out.println("You selected option: " + choice);
}
 }
 }




