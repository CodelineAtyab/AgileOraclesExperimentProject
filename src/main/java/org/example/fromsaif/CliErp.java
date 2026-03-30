package org.example.fromsaif;

import java.util.ArrayList;
import java.util.Scanner;

public class CliErp {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescription = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();
        ArrayList<String> complaintStatuses = new ArrayList<>();
        String[] priorityOptions = {"LOW", "MEDIUM", "HIGH"};
        ArrayList<String> complaintAssignedStaff = new ArrayList<>();
        ArrayList<String> complaintComments = new ArrayList<>();
        String[] supportStaffNames = {"Ali", "Sara", "Khalid"};

        boolean running = true;

        while (running) {

            System.out.println("===== Main Menu =====");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.print("Please enter choice: ");

            String mainChoice = input.nextLine();

            // =================CUSTOMER MENU=================

            if (mainChoice.equals("1")) {

                boolean customerMenu = true;

                while (customerMenu) {
                    System.out.println("-------- Customer Menu --------");
                    System.out.println("1. Create Complaint");
                    System.out.println("2. Go back to Main Menu");
                    System.out.print("Enter choice: ");

                    String customerChoice = input.nextLine();

                    if (customerChoice.equals("1")) {
                        int id;

                        while (true) {
                            System.out.print("Enter Complaint ID: ");
                            String text = input.nextLine();

                            try {
                                id = Integer.parseInt(text); //Changes text into a number (String -> Integer)
                                break;
                            } catch (Exception e) { //Breaks if user inputs words instead of numbers
                                System.out.println("Please enter a number."); //Returns a message so user enters number
                            }
                        }

                        System.out.print("Enter Description: ");
                        String description = input.nextLine();

                        System.out.println("Select Complaint Priority");
                        System.out.println("1. LOW");
                        System.out.println("2. MEDIUM");
                        System.out.println("3. HIGH");
                        System.out.print("Please select one: ");

                        String pChoice = input.nextLine();
                        String priority = priorityOptions[1]; // default MEDIUM

                        if (pChoice.equals("1")) {
                            priority = priorityOptions[0];
                        } else if (pChoice.equals("3")) {
                            priority = priorityOptions[2];
                        }

                        // Store the complaint

                        complaintIds.add(id);
                        complaintDescription.add(description);
                        complaintPriorities.add(priority);
                        complaintStatuses.add("OPEN");
                        complaintAssignedStaff.add("Not Assigned");
                        complaintComments.add("");

                        System.out.println("Your complaint has been created successfully!");
                        System.out.println("Saved ID: " + id + ", Priority: " + priority + ", Status: OPEN");

                        //====================================================//

                    } else if (customerChoice.equals("2")) {
                        customerMenu = false; //Goes back to main menu
                    } else {
                        System.out.println("Invalid option.");
                    }
                }
            }

            // ================= ADMIN MENU =================
            else if (mainChoice.equals("2")) {

                boolean pinCorrect = false;

                while (!pinCorrect) {
                    System.out.println("--- Admin Login ---");
                    System.out.println("Enter PIN or enter 0 to go back to main menu");
                    System.out.print("PIN: ");

                    String pin = input.nextLine();

                    if (pin.equals("0")) {
                        break; // Go back to main menu
                    }

                    if (pin.equals("4567")) {
                        pinCorrect = true;

                        boolean adminMenu = true;

                        while (adminMenu) {
                            System.out.println("--- Admin Menu ---");
                            System.out.println("1. View all complaints.");
                            System.out.println("2. Search complaint by ID.");
                            System.out.println("3. Close a complaint.");
                            System.out.println("4. Assign Complaint to support Staff.");
                            System.out.println("5. View Complaint assignments.");
                            System.out.println("6. Go Back to Main Menu.");
                            System.out.print("Please Select one: ");

                            String adminChoice = input.nextLine();

                            // View all complaints
                            if (adminChoice.equals("1")) {
                                if (complaintIds.size() == 0) {
                                    System.out.println("No complaints found.");
                                } else {
                                    for (int i = 0; i < complaintIds.size(); i++) {
                                        System.out.println("----------------------");
                                        System.out.println("ID: " + complaintIds.get(i));
                                        System.out.println("Description: " + complaintDescription.get(i));
                                        System.out.println("Priority: " + complaintPriorities.get(i));
                                        System.out.println("Status: " + complaintStatuses.get(i));
                                    }
                                    System.out.println("----------------------");
                                }
                            }

                            // Search complaint by ID
                            else if (adminChoice.equals("2")) {

                                int searchId;
                                while (true) {
                                    System.out.print("Enter Complaint ID to search: ");
                                    String text = input.nextLine();

                                    try {
                                        searchId = Integer.parseInt(text);
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("Please enter a number.");
                                    }
                                }

                                boolean found = false;

                                for (int i = 0; i < complaintIds.size(); i++) {
                                    if (complaintIds.get(i) == searchId) {
                                        System.out.println("ID: " + complaintIds.get(i));
                                        System.out.println("Description: " + complaintDescription.get(i));
                                        System.out.println("Priority: " + complaintPriorities.get(i));
                                        System.out.println("Status: " + complaintStatuses.get(i));
                                        found = true;
                                    }
                                }

                                if (!found) {
                                    System.out.println("Complaint not found.");
                                }
                            }

                            // Close a complaint
                            else if (adminChoice.equals("3")) {

                                int closeId;
                                while (true) {
                                    System.out.print("Enter Complaint ID to close: ");
                                    String text = input.nextLine();

                                    try {
                                        closeId = Integer.parseInt(text);
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("Please enter a number.");
                                    }
                                }

                                boolean found = false;

                                for (int i = 0; i < complaintIds.size(); i++) {
                                    if (complaintIds.get(i) == closeId) {
                                        found = true;

                                        if (complaintStatuses.get(i).equals("CLOSED")) {
                                            System.out.println("This complaint is already CLOSED. Cannot close again.");
                                        } else {
                                            complaintStatuses.set(i, "CLOSED");
                                            System.out.println("Complaint closed successfully.");
                                        }
                                    }
                                }

                                if (!found) {
                                    System.out.println("Complaint not found.");
                                }
                            }


                            // Assign Complaint to Support staff
                            else if (adminChoice.equals("4")) {

                                int assignId;
                                while (true) {
                                    System.out.print("Enter Complaint ID to assign: ");
                                    String text = input.nextLine();

                                    try {
                                        assignId = Integer.parseInt(text);
                                        break;
                                    } catch (Exception e) {
                                        System.out.println("Please enter a number.");
                                    }
                                }

                                boolean found = false;

                                for (int i = 0; i < complaintIds.size(); i++) {
                                    if (complaintIds.get(i) == assignId) {
                                        found = true;

                                        if (complaintStatuses.get(i).equals("CLOSED")) {
                                            System.out.println("Closed complaints cannot be assigned.");
                                        } else {
                                            System.out.println("Choose support staff:");
                                            System.out.println("1. Ali");
                                            System.out.println("2. Sara");
                                            System.out.println("3. Khalid");
                                            System.out.print("Enter choice: ");

                                            String staffChoice = input.nextLine();
                                            String selectedStaff = "";

                                            if (staffChoice.equals("1")) {
                                                selectedStaff = supportStaffNames[0];
                                            } else if (staffChoice.equals("2")) {
                                                selectedStaff = supportStaffNames[1];
                                            } else if (staffChoice.equals("3")) {
                                                selectedStaff = supportStaffNames[2];
                                            } else {
                                                System.out.println("Invalid support staff choice.");
                                                break;
                                            }

                                            complaintAssignedStaff.set(i, selectedStaff);
                                            System.out.println("Complaint assigned to " + selectedStaff);
                                        }
                                    }
                                }

                                if (!found) {
                                    System.out.println("Complaint not found.");
                                }
                            }

                            // View Complaint Assigned to staff
                            else if (adminChoice.equals("5")) {
                                if (complaintIds.size() == 0) {
                                    System.out.println("No complaints found.");
                                } else {
                                    for (int i = 0; i < complaintIds.size(); i++) {
                                        System.out.println("----------------------");
                                        System.out.println("ID: " + complaintIds.get(i));
                                        System.out.println("Description: " + complaintDescription.get(i));
                                        System.out.println("Priority: " + complaintPriorities.get(i));
                                        System.out.println("Status: " + complaintStatuses.get(i));
                                        System.out.println("Assigned Staff: " + complaintAssignedStaff.get(i));
                                    }
                                    System.out.println("----------------------");
                                }
                            }

                            // Back to menu
                            else if (adminChoice.equals("6")) {
                                adminMenu = false;
                            }

                            else {
                                System.out.println("Invalid option.");
                            }
                        }

                    } else {
                        System.out.println("Wrong PIN. Try again.");
                    }
                }
            }

            // =================SUPPORT STAFF================= //
            else if (mainChoice.equals("3")) {

                System.out.println("Available Support Staff:");
                System.out.println("1. Ali");
                System.out.println("2. Sara");
                System.out.println("3. Khalid");
                System.out.print("Select your name: ");

                String supportLoginChoice = input.nextLine();
                String loggedInStaff = "";

                if (supportLoginChoice.equals("1")) {
                    loggedInStaff = supportStaffNames[0];
                }
                else if (supportLoginChoice.equals("2")) {
                    loggedInStaff = supportStaffNames[1];
                }
                else if (supportLoginChoice.equals("3")) {
                    loggedInStaff = supportStaffNames[2];
                }
                else {
                    System.out.println("Invalid support staff choice.");
                    continue;
                }

                boolean supportMenu = true;

                while (supportMenu) {

                    System.out.println("---- Support Staff Menu ----");
                    System.out.println("Logged in as: " + loggedInStaff);
                    System.out.println("1. View my assigned complaints");
                    System.out.println("2. Add comment to complaint");
                    System.out.println("3. Close complaint");
                    System.out.println("4. Go back to Main Menu");
                    System.out.print("Enter choice: ");

                    String supportChoice = input.nextLine();

                    if (supportChoice.equals("1")) {

                        boolean foundAssigned = false;

                        for (int i = 0; i < complaintIds.size(); i++) {

                            if (complaintAssignedStaff.get(i).equals(loggedInStaff)) {

                                foundAssigned = true;

                                System.out.println("----------------------");
                                System.out.println("ID: " + complaintIds.get(i));
                                System.out.println("Description: " + complaintDescription.get(i));
                                System.out.println("Priority: " + complaintPriorities.get(i));
                                System.out.println("Status: " + complaintStatuses.get(i));
                                System.out.println("Comments: " + complaintComments.get(i));
                            }
                        }

                        if (!foundAssigned) {
                            System.out.println("No complaints assigned.");
                        }
                    }

                    // Add Comment

                    else if (supportChoice.equals("2")) {
                        int commentId;
                        while (true) {
                            System.out.print("Enter Complaint ID to comment on: ");
                            String text = input.nextLine();

                            try {
                                commentId = Integer.parseInt(text);
                                break;
                            } catch (Exception e) {
                                System.out.println("Please enter a number.");
                            }
                        }

                        boolean found = false;

                        for (int i = 0; i < complaintIds.size(); i++) {
                            if (complaintIds.get(i) == commentId) {
                                found = true;

                                if (!complaintAssignedStaff.get(i).equals(loggedInStaff)) {
                                    System.out.println("You can only comment on complaints assigned to you.");
                                } else {
                                    System.out.print("Enter comment: ");
                                    String comment = input.nextLine();

                                    complaintComments.set(i, comment);
                                    System.out.println("Comment saved successfully.");
                                }
                            }
                        }

                        if (!found) {
                            System.out.println("Complaint not found.");
                        }
                    }

                    // Close Complaint

                    else if (supportChoice.equals("3")) {

                        int closeId;
                        while (true) {
                            System.out.print("Enter Complaint ID to close: ");
                            String text = input.nextLine();

                            try {
                                closeId = Integer.parseInt(text);
                                break;
                            } catch (Exception e) {
                                System.out.println("Please enter a number.");
                            }
                        }

                        boolean found = false;

                        for (int i = 0; i < complaintIds.size(); i++) {

                            if (complaintIds.get(i) == closeId) {

                                found = true;

                                if (!complaintAssignedStaff.get(i).equals(loggedInStaff)) {
                                    System.out.println("You can only close complaints assigned to you.");
                                }

                                else if (complaintStatuses.get(i).equals("CLOSED")) {
                                    System.out.println("This complaint is already CLOSED.");
                                }

                                else {
                                    complaintStatuses.set(i, "CLOSED");
                                    System.out.println("Complaint closed successfully.");
                                }
                            }
                        }

                        if (!found) {
                            System.out.println("Complaint not found.");
                        }
                    }

                    else if (supportChoice.equals("4")) {
                        supportMenu = false;
                    }

                    else {
                        System.out.println("Option not implemented yet.");
                    }
                }
            }


            // =================EXIT==================
            else if (mainChoice.equals("4")) {
                System.out.println("Goodbye");
                running = false;
            } else {
                System.out.println("Invalid choice. Try again.");
            }
        }
        input.close();
    }

}