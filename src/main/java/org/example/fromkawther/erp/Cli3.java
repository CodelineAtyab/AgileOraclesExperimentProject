package org.example.fromkawther.erp;
import java.util.Scanner;
import java.util.ArrayList;
public class Cli3
{
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            ArrayList<Complaint> list = new ArrayList<>();

            list.add(new Complaint(1, "Problem", "LOW"));

            System.out.print("Enter PIN: ");
            int pin = sc.nextInt();

            if (pin != 1234) {
                System.out.println("Wrong PIN");
                return;
            }

            int choice = 0;

            while (choice != 4) {

                System.out.println("1. View");
                System.out.println("2. Search");
                System.out.println("3. Close");
                System.out.println("4. Exit");
                System.out.print("Choose: ");

                choice = sc.nextInt();

                if (choice == 1) {

                    for (int i = 0; i < list.size(); i++) {
   Complaint c = list.get(i);
        System.out.println(c.id + " " + c.description + " " + c.priority + " " + c.status);
     }

     } else if (choice == 2) {

                    System.out.print("Enter ID: ");
                    int id = sc.nextInt();
                    boolean found = false;

  for (int i = 0; i < list.size(); i++) {
   if (list.get(i).id == id) {
   System.out.println("Found");
    found = true;
   }
   }
    if (!found) {
   System.out.println("Not found");
  }
  } else if (choice == 3) {
  System.out.print("Enter ID: ");
   int id = sc.nextInt();
  boolean found = false;

  for (int i = 0; i < list.size(); i++) {
      if (list.get(i).id == id) {
        found = true;
   if (list.get(i).status.equals("CLOSED")) {
  System.out.println("Already closed");
   }
                            else {
   list.get(i).status = "CLOSED";
   System.out.println("Closed");
  }
   }
  }
  if (!found) {
   System.out.println("Not found");
     }

   }
 else if (choice == 4) {
    System.out.println("Exit");
 }
  else {
   System.out.println("Wrong choice");
 }
 }

   sc.close();
   }
    }


