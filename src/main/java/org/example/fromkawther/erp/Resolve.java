package org.example.fromkawther.erp;
import java.util.Scanner;


class Complaint {
    int id;
    String description;
    String status;

    Complaint(int id, String description) {
        this.id = id;
        this.description = description;
        this.status = "OPEN";
    }
}
public class Resolve {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Complaint c1 = new Complaint(1, "Device problem");
        Complaint c2 = new Complaint(2, "Late response");
        Complaint c3 = new Complaint(3, "Data recovery request");

      Complaint[] assigned = {c1, c3};

     while (true) {
     System.out.println("\n1. View the Complaints");
   System.out.println("2. Close the  Complaint");
    System.out.println("3. Exit");
System.out.print("Choose the option: ");
            int choice = sc.nextInt();
   if (choice == 1) {
  for (Complaint c : assigned) {
    System.out.println("ID: " + c.id + " | " + c.description + " | " + c.status);
 }
   }
  else if (choice == 2) {
  System.out.print("Enter complaint ID to close: ");
int id = sc.nextInt();boolean found = false;
for (Complaint c : assigned) {
 if (c.id == id) {
  found = true;
  if (c.status.equals("OPEN"))
                        {
   c.status = "CLOSED";
      System.out.println("Complaint closed.");

     }
   else {
     System.out.println("Complaint already CLOSED.");
    }
     break;
     }
     }
     if (!found) {
       System.out.println("Complaint not found.");
       }
      }
      else if (choice == 3) {
        break;
      } else {
       System.out.println("Invalid choice.");
         }
       }

        sc.close();
    }
}


