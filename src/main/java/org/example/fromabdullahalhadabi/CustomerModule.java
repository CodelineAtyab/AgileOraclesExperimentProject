package org.example.fromabdullahalhadabi;
import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {

    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);


        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();

        System.out.println("=== Customer Complaint Module ===");


        boolean run = true;
        int idCounter = 1;

        while(run){

            System.out.println(" 1. Create Complaint");
            System.out.println("2) View Complaints");
            System.out.println("3) Exit");
            System.out.print("Choose: ");


            int choice = sc.nextInt();
            sc.nextLine();


            if(choice == 1){

                System.out.println("Add your Complaint ");
                String des = sc.nextLine();

                System.out.print("Enter priority (LOW / MEDIUM / HIGH) [Default: MEDIUM]: ");
                String priority = sc.nextLine().trim().toUpperCase();

                if (priority.isEmpty()) {
                    priority = "MEDIUM";
                }

                if (!priority.equals("LOW") && !priority.equals("MEDIUM") && !priority.equals("HIGH")) {
                    System.out.println("Invalid priority, defaulting to MEDIUM.");
                    priority = "MEDIUM";


                complaintIds.add(idCounter);
                complaintDescriptions.add(des);
                complaintPriorities.add(priority);

                idCounter++;


            } else if (choice == 2) {

                if (complaintIds.isEmpty()) {
                    System.out.println(" No complaints found.");

                } else {

                    System.out.println("\n--- Complaints List ---");
                    for (int i = 0; i < complaintIds.size(); i++) {

                        System.out.println(

                                "ID: " + complaintIds.get(i)

                                        + " | Description: " + complaintDescriptions.get(i)

                                        + " | Priority: " + complaintPriorities.get(i)

                        );
                    }
                }

            } else if (choice == 3) {

                run = false;

                System.out.println("Exiting system...");

            } else {
                System.out.println("Invalid choice!");

            }
        }

        sc.close();
    }
}