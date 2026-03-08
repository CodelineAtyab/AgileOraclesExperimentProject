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

            }
            else if ( choice == 2 ){

                AdminModule.adminMenu(scanner,complaintCS);

            }
            else if ( choice == 3 ){

                SupportStaff.SupportMenu(scanner,complaintCS);

            }
            else {
                break;
            }
        }
        System.out.println("BYE!");
        scanner.close();

    }
}
