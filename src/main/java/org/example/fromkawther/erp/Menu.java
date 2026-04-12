package org.example.fromkawther.erp;
import java.util.Scanner;
public class Menu{
    public static void main (String[] args){

  Scanner sc = new Scanner(System.in);
   int choice = 0;

  while (choice != 4) {

    System.out.println("Main Menu");
    System.out.println("1. Customer");
    System.out.println("2. Admin");
    System.out.println("3. Support Staff");
    System.out.println("4. Exit");
     System.out.print("Enter choice: ");

      if (sc.hasNextInt()) {
       choice = sc.nextInt();

       if (choice == 1) {
        System.out.println("Customer");
         } else if (choice == 2) {
         System.out.println("Admin");
          } else if (choice == 3) {
     System.out.println("Support Staff");
       }
       else if (choice == 4) {
        System.out.println("Goodbye");
        }
       else {
       System.out.println("Invalid choice");
       }

       }
      else {
       System.out.println("Invalid input");
        sc.next();
        }
       }

       sc.close();
      }

}

