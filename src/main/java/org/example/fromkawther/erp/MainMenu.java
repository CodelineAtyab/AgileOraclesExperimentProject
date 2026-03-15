package org.example.fromkawther;
import java.util.Scanner;
public class MainMenu {
 public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] menu = {"1.customer", "2. admin", "3.Support Staff", "4.exit" };


    boolean running = true;
    while(running)
        {
            System.out.println("\n ====mini ERP system===");
            //display by loop:
            for (String option : menu) {
                System.out.println(option);
            }
            System.out.print("choose an option :");
            int choice = input.nextInt();
            if (choice == 1) {
                System.out.println("customer section selected.");
            } else if (choice == 2) {
                System.out.println("admin section selected.");
            } else if (choice == 3) {
                System.out.println("support staff section selected.");
            } else if (choice == 4) {
                System.out.println("exiting system..goodbye.");
                running = false;
            } else {
                System.out.println("invalid option. pls try agin");
            }
        }
        input.close();
    }}

