package org.example.fromkawther.erp;
import java.util.Scanner;
import java.util.ArrayList;
public class List2{

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        ArrayList<Complaint> list = new ArrayList<>();

        int id;
        String description;
        String priority = "MEDIUM";

        System.out.print("Enter Complaint ID: ");
        if (sc.hasNextInt()) {
            id = sc.nextInt();
            sc.nextLine();
        } else {
            System.out.println("Invalid ID");
            return;
        }

        System.out.print("Enter the Discraption about lists: ");
        description = sc.nextLine();

        System.out.print("Enter Priority (low /Medium / High): ");
        String input = sc.nextLine();

        if (input.equalsIgnoreCase("low") ||
         input.equalsIgnoreCase("Medium") ||
         input.equalsIgnoreCase(" High")) {
      priority = input.toUpperCase();
        }

    list.add(new Complaint(id, description, priority));

  System.out.println("Complaint added successfully!");

        sc.close();
    }
}


        int[] complaintID = new int[100];
        String[] description = new String[100];
        String[] priority = new String[100];

        int count = 0;

        System.out.print("Enter Complaint ID (numeric): ");
        if (!sc.hasNextInt()) {
            System.out.println("Invalid input! ID must be numeric.");
            return;
        }
        complaintID[count] = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Complaint Description: ");
        description[count] = sc.nextLine();


        System.out.print("Enter Priority (LOW / MEDIUM (default) / HIGH): ");
        String priorityInput = sc.nextLine();

        if (priorityInput.equals("")) {
            priority[count] = "MEDIUM";
        } else if (priorityInput.equals("LOW") || priorityInput.equals("MEDIUM") || priorityInput.equals("HIGH")) {
            priority[count] = priorityInput;
        } else {
            System.out.println("Invalid priority! MEDIUM priority set.");
            priority[count] = "MEDIUM";
        }

        count++;

        System.out.println("\nComplaint Created Successfully!");
        System.out.println("ID: " + complaintID[count - 1]);
        System.out.println("Description: " + description[count - 1]);
        System.out.println("Priority: " + priority[count - 1]);

        sc.close();

    }
}



