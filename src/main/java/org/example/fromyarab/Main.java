package org.example.fromyarab;


import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        System.out.println("=".repeat(50));
        System.out.println("                   --- CLI ERP ---   ");
        System.out.println("=".repeat(50));

        boolean con = true;
        int choice = 0;
        while (con){
            System.out.println("   --- Main menu ---\n");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.print("\nEntr your choice: ");
            choice = scan.nextInt();

            switch (choice) {
                case 1 -> {
                    Customer();
                }
                case 2 -> {
                    Admin();
                }
                case 3 -> {
                    Support_Staff();
                }
                case 4 -> {
                    System.out.println("GoodBay!...");
                    con = false;
                }
                default -> System.out.println("Invalid Input!!.. ");
            }
        }
    }

    static void Customer(){

    }

    static void Admin(){

    }

    static void Support_Staff(){

    }


}
