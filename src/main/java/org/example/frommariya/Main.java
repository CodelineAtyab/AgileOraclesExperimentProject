package org.example.frommariya;

import java.util.Scanner;
import java.util.ArrayList;



public class Main {
    public static void main(String[] args){

        Scanner scanner = new Scanner(System.in);
      
        ArrayList<ComplaintC> complaintCS = new ArrayList<>();

        while (true){
            System.out.println("1. Customer");
            System.out.println("2. Admin ");
            System.out.println("3. Support Staff");
            System.out.println("4. EXIT");

            int choice = scanner.nextInt();
            scanner.nextLine();

            if ( choice == 1 ){
                CustomerModule.CustomertMenu(scanner,complaintCS);

                System.out.println("Customer...");
            }
            else if ( choice == 2 ){
                System.out.println("Admin...");
            }
            else if ( choice == 3 ){
                System.out.println("Support...");
            }
            else {
                break;
            }
        }
        System.out.println("BYE!");
        scanner.close();

    }
}
