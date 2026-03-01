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
                Admin(complaints);
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
        complaint.put("Priority" , priority);
        complaint.put("Status" , "OPEN");
        complaints.add(complaint);

        System.out.println("\nYour Complaint Has Been Recorded Successfully >...\n");

    }

    // Admin Module
    static void Admin(ArrayList<Map<String, Object>> complaints){
        Scanner scan = new Scanner(System.in);

        // validate admin access
        System.out.print("Enter Administrator PIN Number: ");
        String SPIN = scan.nextLine();
        if (!isNumeric(SPIN) || Integer.parseInt(SPIN) != 1234){
            System.out.println("Invalid PIN Number!!");
            System.out.println("Returning to main menu ...\n");
            return;
        }

        System.out.println();

        // display the administrator menu
        boolean active = true;
        while (active){
            // display main menu
            System.out.println("   --- Administrator Menu ---");
            System.out.println("1. View all complaints");
            System.out.println("2. Search complaint by ID");
            System.out.println("3. Close a complaint");
            System.out.println("4. Exit Administrator menu");
            System.out.print("\nEnter your choice: ");
            String sChoice = scan.nextLine();
            int choice = 0;

            // check user input
            if (isNumeric(sChoice)){
                choice = Integer.parseInt(sChoice);
            }

            // handle user choice
            if (choice == 1){
                if (complaints.isEmpty()) {
                    System.out.println("NO Complaints Found ..\n");
                }
                else {
                    System.out.println("List of complaints: ");
                    int counter = 0;
                    for (Map complaint : complaints){
                        System.out.println(counter + ". Complaint ID: " + complaint.get("ID"));
                        System.out.println("   Complaint Description: " + complaint.get("Description"));
                        System.out.println("   Complaint Priority: " + complaint.get("Priority"));
                        System.out.println("   Complaint Status: " + complaint.get("Status"));
                        System.out.println();
                    }
                }
            }
            else if (choice == 2){
                // check if no complaints yet
                if (complaints.isEmpty()) {
                    System.out.println("Sorry! NO Complaints Found ..\n");
                }
                else {
                    System.out.print("Enter Complaint ID: ");
                    String sID = scan.nextLine();
                    if (!isNumeric(sID)){
                        System.out.println("Error! Please Numbers Are Only Allowed For Complaint ID ..");
                        System.out.println("Returning to Administrator Menu >>>\n");
                    }
                    else {
                        // handle complaint id
                        int ID = Integer.parseInt(sID);
                        int found = 0;
                        Map<Object, Object> searchedComplaint = new HashMap<>();
                        for (Map complaint : complaints){
                            if (complaint.get("ID").equals(ID)){
                                searchedComplaint = complaint;
                                found = 1;
                            }
                        }
                        // print the complaint info
                        if (found == 1){
                            System.out.println(" -- Complaint Info --");
                            System.out.println("Complaint ID: "+ searchedComplaint.get("ID"));
                            System.out.println("Complaint Description: " + searchedComplaint.get("Description"));
                            System.out.println("Complaint Priority: " + searchedComplaint.get("Priority"));
                            System.out.println();
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) \n\n" ,ID);
                        }
                    }
                }

            }
            else if (choice == 3){
                // check if no complaints yet
                if (complaints.isEmpty()) {
                    System.out.println("Sorry! NO Complaints Found ..\n");
                }
                else {
                    System.out.print("Enter Complaint ID to Close: ");
                    String sID = scan.nextLine();
                    if (!isNumeric(sID)){
                        System.out.println("Error! Please Numbers Are Only Allowed For Complaint ID ..");
                        System.out.println("Returning to Administrator Menu >>>\n");
                    }
                    else {
                        // handle complaint id
                        int ID = Integer.parseInt(sID);
                        int found = 0;
                        int index = 0;
                        int cout = 0;
                        Map<String, Object> closeComplaint = new HashMap<>();
                        for (Map complaint : complaints){
                            if (complaint.get("ID").equals(ID)) {
                                closeComplaint = complaint;
                                index = cout;
                                found = 1;
                            }
                            cout = cout + 1;
                        }
                        // change the status to closed
                        if (found == 1){
                            closeComplaint.replace("Status" , "CLOSED");
                            complaints.set(index , closeComplaint);
                            System.out.println("The Complaint Closed Successfully >...\n");
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) \n\n" ,ID);
                        }
                    }
                }
            }
            else if(choice == 4){
                System.out.println("Exiting Administrator menu!...\n");
                active = false;
            }
            else {
                System.out.println("Invalid Input!!.. Try Again\n");
            }
        }
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
