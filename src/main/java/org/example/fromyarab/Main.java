package org.example.fromyarab;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        // prepare data structure
        ArrayList<Map<String, Object>> complaints = new ArrayList<>();

        Scanner scan = new Scanner(System.in);
        System.out.println("=".repeat(50));
        System.out.println("                   --- CLI ERP ---   ");
        System.out.println("=".repeat(50));

        boolean con = true;
        int choice = 0;
        while (con){
            // display main menu
            System.out.println("   --- Main menu ---");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.print("\nEnter your choice: ");
            String sChoice = scan.nextLine();
            // check user input
            if (isNumeric(sChoice)){
                choice = Integer.parseInt(sChoice);
            }

            // handle user choice
            if (choice == 1){
                Customer(complaints);
            }
            else if (choice == 2){
                Admin();
            }
            else if (choice == 3){
                Support_Staff();
            }
            else if(choice == 4){
                System.out.println("GoodBay!...");
                scan.close();
                con = false;
            }
            else {
                System.out.println("Invalid Input!!.. Try Again\n");
            }
        }
    }

    // Customer module
    static void Customer(ArrayList<Map<String, Object>> complaints){
        // prepare data structure
        Map<String, Object> complaint = new HashMap<>();

        Scanner scan = new Scanner(System.in);
        System.out.println("\n  --- Customer Serves ---  ");

        // ask for user inputs
        System.out.println("Enter Complaint ID (numeric): ");
        String stringId = scan.nextLine();
        // check user id
        if (!isNumeric(stringId)){
            System.out.println("Error! Please Numbers Are Only Allowed For Complaint ID ..");
            System.out.println("Returning to Main Menu >>>\n");
            return;
        }
        int id = Integer.parseInt(stringId);
        System.out.println("Enter Complaint Description: ");
        String description = scan.nextLine();
        System.out.println("Select Priority(LOW/MEDIUM/HIGH): ");
        String priority = scan.nextLine();
        // check validity of complaint priority type
        if (!priority.equalsIgnoreCase("LOW") && !priority.equalsIgnoreCase("MEDIUM") && !priority.equalsIgnoreCase("HIGH")){
            System.out.println("Unrecognized priority type or Unspecified priority type ...");
            System.out.println("Priority type set to default (MEDIUM) >>>.");
            priority = "MEDIUM";
        }
        else {priority = priority.toUpperCase(); }

        // save the compliant
        complaint.put("ID" , id);
        complaint.put("Description" , description);
        complaint.put("priority" , priority);
        complaints.add(complaint);

        System.out.println("\nYour Complaint Has Been Recorded Successfully >...\n");

    }

    // Admin Module
    static void Admin(){

    }

    // Support_Staff Module
    static void Support_Staff(){

    }

    // Function to check if the string is integer
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }
}
