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

