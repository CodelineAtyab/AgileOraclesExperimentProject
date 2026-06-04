package org.example.fromsafa.Sprint1;
import java.util.Scanner;
public class DisplayMenu {
    public static void main(String[] args){
    Scanner input = new Scanner(System.in);

    int choice=0;
    while ( choice != 4) {
        System.out.println("Mini ERP System ");
        System.out.println("1. Customer");
        System.out.println("2. Admin");
        System.out.println("3. Support Staff");
        System.out.println("4. Exit");
        System.out.println("Enter your choice:");

        choice= input.nextInt();
        if (choice == 1){
            System.out.println("Customer section selected.");
        }
        else if (choice == 2){
            System.out.println("Admin section selected.");
        }
        else if (choice == 3){
            System.out.println("Support Staff section selected");
        }
        else if (choice == 4){
            System.out.println("Exiting system");
        }
        else {
            System.out.println("Invalid choice Please try again");
        }
        System.out.println("");

    }
    input.close();
}

}