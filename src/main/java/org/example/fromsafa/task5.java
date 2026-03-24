package org.example.fromsafa;

import java.util.ArrayList;
import java.util.Scanner;

public class task5 {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);


        ArrayList<Integer> ids = new ArrayList<>();
        ArrayList<String> descriptions = new ArrayList<>();
        ArrayList<String> status = new ArrayList<>();
        ArrayList<String> assignedTo = new ArrayList<>();
        ArrayList<String> comments = new ArrayList<>();


        ids.add(1);
        descriptions.add("Login issue");
        status.add("OPEN");
        assignedTo.add("safa");
        comments.add("no comment");

        ids.add(2);
        descriptions.add("Payment error");
        status.add("OPEN");
        assignedTo.add("ali");
        comments.add("no comment");

        // Staff login
        System.out.print("Enter your name: ");
        String staffName = input.nextLine();

        System.out.println("\n1. View My Complaints");
        System.out.println("2. Add Comment");
        System.out.println("3. Close Complaint");

        System.out.print("Choose: ");
        int choice = input.nextInt();


        if (choice == 1) {

            for (int i = 0; i < ids.size(); i++) {

                if (assignedTo.get(i).equals(staffName)) {

                    System.out.println("ID: " + ids.get(i));
                    System.out.println("Description: " + descriptions.get(i));
                    System.out.println("Status: " + status.get(i));
                    System.out.println("Comment: " + comments.get(i));
                    System.out.println("-------------------");
                }
            }
        }


        else if (choice == 2) {

            System.out.print("Enter Complaint ID: ");
            int id = input.nextInt();
            input.nextLine();

            boolean found = false;

            for (int i = 0; i < ids.size(); i++) {

                if (ids.get(i) == id && assignedTo.get(i).equals(staffName)) {

                    System.out.print("Enter your comment: ");
                    String newComment = input.nextLine();

                    comments.set(i, newComment);

                    System.out.println("Comment added successfully!");
                    found = true;
                }
            }

            if (!found) {
                System.out.println("You cannot update this complaint.");
            }
        }


        else if (choice == 3) {

            System.out.print("Enter Complaint ID: ");
            int id = input.nextInt();

            boolean found = false;

            for (int i = 0; i < ids.size(); i++) {

                if (ids.get(i) == id && assignedTo.get(i).equals(staffName)) {

                    if (status.get(i).equals("CLOSED")) {

                        System.out.println("Complaint already closed.");

                    } else {

                        status.set(i, "CLOSED");
                        System.out.println("Complaint closed successfully.");
                    }

                    found = true;
                }
            }

            if (!found) {
                System.out.println("You cannot close this complaint.");
            }
        }

        else {
            System.out.println("Invalid choice.");
        }

        input.close();
    }
}