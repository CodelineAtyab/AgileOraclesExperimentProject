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
                Support_Staff(complaints);
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

        // check the uniqueness of ID
        int found = 0 ;
        Map<Object, Object> searchedComplaint = new HashMap<>();
        for (Map oldComplaint : complaints){
            if (oldComplaint.get("ID").equals(id)){
                found = 1;
            }
        }

        if (found == 1){
            System.out.printf("This ID (%d) Already Exists ... \n" , id);
            System.out.println("Returning to Main Menu >>>\n");
        }
        else {
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
            complaint.put("Staff" , "N/A");
            complaints.add(complaint);

            System.out.println("\nYour Complaint Has Been Recorded Successfully >...\n");
        }
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
            System.out.println("4. Assign complaint to staff");
            System.out.println("5. Exit Administrator menu");
            System.out.print("\nEnter your choice: ");
            String sChoice = scan.nextLine();
            int choice = 0;

            // check user input
            if (isNumeric(sChoice)){
                choice = Integer.parseInt(sChoice);
            }

            // handle user choice
            // list all complaints
            if (choice == 1){
                if (complaints.isEmpty()) {
                    System.out.println("NO Complaints Found ..\n");
                }
                else {
                    System.out.println("List of complaints: ");
                    int counter = 1;
                    for (Map complaint : complaints){
                        System.out.println(counter + ". Complaint ID: " + complaint.get("ID"));
                        System.out.println("   Complaint Description: " + complaint.get("Description"));
                        System.out.println("   Complaint Priority: " + complaint.get("Priority"));
                        System.out.println("   Complaint Assigned Support Staff: " + complaint.get("Staff"));
                        System.out.println("   Complaint Status: " + complaint.get("Status"));
                        if (complaint.containsKey("Comment")) {
                            System.out.println("   Compliant Comments: " + complaint.get("Comment"));
                        }
                        System.out.println();
                        counter += 1;
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
                            System.out.println("Complaint Assigned Support Staff: " + searchedComplaint.get("Staff"));
                            System.out.println("Complaint Status: " + searchedComplaint.get("Status"));
                            if (searchedComplaint.containsKey("Comment")) {
                                System.out.println("Compliant Comments: " + searchedComplaint.get("Comment"));
                            }
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
                            if (closeComplaint.get("Status").equals("CLOSED")){
                                System.out.println("The Complaint Already Closed ...\n");
                            }
                            else {
                                closeComplaint.replace("Status", "CLOSED");
                                complaints.set(index, closeComplaint);
                                System.out.println("The Complaint Closed Successfully >...\n");
                            }
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) \n\n" ,ID);
                        }
                    }
                }
            }
            else if (choice == 4){
                // check if no complaints yet
                if (complaints.isEmpty()) {
                    System.out.println("Sorry! NO Complaints Found ..\n");
                }
                else {
                    System.out.print("Enter Complaint ID to Assign to Staff: ");
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
                        Map<String, Object> assignComplaint = new HashMap<>();
                        for (Map complaint : complaints){
                            if (complaint.get("ID").equals(ID)) {
                                assignComplaint = complaint;
                                index = cout;
                                found = 1;
                            }
                            cout = cout + 1;
                        }

                        // assign staff to the complaint
                        if (found == 1){
                            // check if the complaint status is closed
                            if (assignComplaint.get("Status").equals("CLOSED")){
                                System.out.println("The Complaint Already Closed ...\n");
                            }
                            else {
                                System.out.print("Enter Support Staff Name: ");
                                String staffName = scan.nextLine();
                                assignComplaint.replace("Staff", staffName.toUpperCase());
                                complaints.set(index, assignComplaint);
                                System.out.printf("The Complaint (%d) Has Been Assigned Successfully TO (%s)>...\n\n" , ID , staffName);
                            }
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) \n\n" ,ID);
                        }
                    }
                }
            }
            else if (choice == 5){
                System.out.println("Exiting Administrator menu!...\n");
                active = false;
            }
            else {
                System.out.println("Invalid Input!!.. Try Again\n");
            }
        }
    }

    // Support_Staff Module
    static void Support_Staff(ArrayList<Map<String, Object>> complaints){
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter your name: ");
        String staffName = scan.nextLine();
        staffName = staffName.toUpperCase();

        boolean work = true;
        while (work){
            System.out.printf("   --- Support Staff %s Menu ---\n" , staffName);
            System.out.println("1. View all assigned complaints");
            System.out.println("2. Search complaint by ID");
            System.out.println("3. Resolve Complaint");
            System.out.println("4. Exit Support Staff menu");
            System.out.print("\nEnter your choice: ");
            String sChoice = scan.nextLine();
            int choice = 0;

            // check user input
            if (isNumeric(sChoice)){
                choice = Integer.parseInt(sChoice);
            }
            // handle user choice
            // list staff assigned complaints
            if (choice == 1){
                int cout = 1;
                Map<String, Object> staffComplaint = new HashMap<>();
                for (Map complaint : complaints){
                    if (complaint.get("Staff").equals(staffName)) {
                        if (cout == 1){
                            System.out.printf("List of assigned complaints to %s: \n" ,staffName);
                            System.out.println(cout + ". Complaint ID: " + complaint.get("ID"));
                            System.out.println("   Complaint Description: " + complaint.get("Description"));
                            System.out.println("   Complaint Priority: " + complaint.get("Priority"));
                            System.out.println("   Complaint Assigned Support Staff: " + complaint.get("Staff"));
                            System.out.println("   Complaint Status: " + complaint.get("Status"));
                            if (complaint.containsKey("Comment")) {
                                System.out.println("   Compliant Comments: " + complaint.get("Comment"));
                            }
                            System.out.println();
                            cout += 1;
                        }
                        else {
                            System.out.println(cout + ". Complaint ID: " + complaint.get("ID"));
                            System.out.println("   Complaint Description: " + complaint.get("Description"));
                            System.out.println("   Complaint Priority: " + complaint.get("Priority"));
                            System.out.println("   Complaint Assigned Support Staff: " + complaint.get("Staff"));
                            System.out.println("   Complaint Status: " + complaint.get("Status"));
                            if (complaint.containsKey("Comment")) {
                                System.out.println("   Compliant Comments: " + complaint.get("Comment"));
                            }
                            System.out.println();
                            cout += 1;
                        }
                    }
                }
                if (cout == 1){
                    System.out.println("There are no assigned complaints to you ...");
                }
            }
            else if (choice == 2){
                // check if there are assigned complaints to staff
                int cout = 0;
                Map<String, Object> staffComplaint = new HashMap<>();
                for (Map complaint : complaints){
                    if (complaint.get("Staff").equals(staffName)) {
                        cout += 1;
                    }
                }
                if (cout == 0){
                    System.out.println("There are no assigned complaints to you ...");
                }
                else {
                    System.out.print("Enter Complaint ID: ");
                    String sID = scan.nextLine();
                    if (!isNumeric(sID)){
                        System.out.println("Error! Please Numbers Are Only Allowed For Complaint ID ..");
                        System.out.println("Returning to Staff Menu >>>\n");
                    }
                    else {
                        // handle complaint id
                        int ID = Integer.parseInt(sID);
                        int found = 0;
                        Map<Object, Object> searchedComplaint = new HashMap<>();
                        for (Map complaint : complaints){
                            if (complaint.get("ID").equals(ID) && complaint.get("Staff").equals(staffName)){
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
                            System.out.println("Complaint Assigned Support Staff: " + searchedComplaint.get("Staff"));
                            System.out.println("Complaint Status: " + searchedComplaint.get("Status"));
                            if (searchedComplaint.containsKey("Comment")) {
                                System.out.println("Compliant Comments: " + searchedComplaint.get("Comment"));
                            }
                            System.out.println();
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) for you \n\n" ,ID);
                        }
                    }
                }
            }
            else if (choice == 3){
                // check if there are assigned complaints to staff
                int cout = 0;
                Map<String, Object> staffComplaint = new HashMap<>();
                for (Map complaint : complaints){
                    if (complaint.get("Staff").equals(staffName)) {
                        cout += 1;
                    }
                }
                if (cout == 0){
                    System.out.println("There are no assigned complaints to you ...");
                }
                else {
                    System.out.print("Enter Complaint ID to Resolve: ");
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
                        int couter = 0;
                        Map<String, Object> resulvedComplaint = new HashMap<>();
                        for (Map complaint : complaints){
                            if (complaint.get("ID").equals(ID) && complaint.get("Staff").equals(staffName)) {
                                resulvedComplaint = complaint;
                                index = couter;
                                found = 1;
                            }
                            couter = couter + 1;
                        }

                        // resolve the complaint and add comments
                        if (found == 1){
                            // check if the complaint status is closed before resolve it
                            if (resulvedComplaint.get("Status").equals("CLOSED")){
                                System.out.println("The Complaint Already Closed ...\n");
                            }
                            else {
                                System.out.printf("Enter comments for this complaint(%d): " , ID);
                                String comments = scan.nextLine();
                                resulvedComplaint.put("Comment", comments);
                                resulvedComplaint.replace("Status" , "CLOSED");
                                complaints.set(index, resulvedComplaint);
                                System.out.printf("The Complaint (%d) Has Been Resolved Successfully >...\n\n" , ID);
                            }
                        }
                        else {
                            System.out.printf("There is no complaint with ID number (%d) \n\n" ,ID);
                        }
                    }
                }
            }
            else if (choice == 4){
                System.out.println("Exiting Staff menu!...\n");
                work = false;
            }
            else {
                System.out.println("Invalid Input!!.. Try Again\n");
            }
        }
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
