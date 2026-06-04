package org.example.fromabdullahalhadabi;

import java.util.ArrayList;
import java.util.Scanner;

/*
========================================================
TASK 1: Project Setup (Main Menu)
========================================================
*/
public class ProjectFinal {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        boolean running = true;

        while (running) {

            System.out.println("\n=== Main Menu ===");
            System.out.println("1) Customer");
            System.out.println("2) Admin");
            System.out.println("3) Support Staff");
            System.out.println("4) Exit");
            System.out.print("Choose: ");

            int choice;

            if (sc.hasNextInt()) {
                choice = sc.nextInt();
                sc.nextLine();
            } else {
                System.out.println("Invalid input! Enter 1-4.");
                sc.nextLine();
                choice = -1;
            }

            if (choice == 1) {
                CustomerModule.main(new String[]{});
            } else if (choice == 2) {
                AdminModule.main(new String[]{});
            } else if (choice == 3) {
                SupportStaffModule.main(new String[]{});
            } else if (choice == 4) {
                running = false;
                System.out.println("Goodbye!");
            } else {
                System.out.println("Invalid choice!");
            }
        }

        System.out.println("Application closed.");
        // sc.close();  // optional (better not close System.in if debugging)
    }
}

/*
========================================================
TASK 2: Customer Module
========================================================
*/
class CustomerModule {

    // ===== SAME NAMES (like your code style) =====
    public static ArrayList<Integer> complaintIds = new ArrayList<>();
    public static ArrayList<String> complaintDescriptions = new ArrayList<>();
    public static ArrayList<String> complaintPriorities = new ArrayList<>();

    // ===== TASK 4/5 shared data =====
    public static ArrayList<String> ticketStates = new ArrayList<>();      // OPEN / CLOSED
    public static ArrayList<String> ticketOwners = new ArrayList<>();      // staff / UNASSIGNED
    public static ArrayList<String> ticketNotes = new ArrayList<>();       // comments
    public static ArrayList<String> supportStaffNames = new ArrayList<>(); // staff list

    public static int idCounter = 1;

    public static void main(String[] args) {

        // Initialize staff list once (so Admin/Support can use it)
        if (supportStaffNames.isEmpty()) {
            supportStaffNames.add("ALI");
            supportStaffNames.add("FATMA");
            supportStaffNames.add("MOHAMMED");
        }

        Scanner sc = new Scanner(System.in);
        boolean run = true;

        System.out.println("=== Customer Complaint Module ===");

        while (run) {

            System.out.println("\n1) Create Complaint");
            System.out.println("2) View Complaints");
            System.out.println("3) Exit");
            System.out.print("Choose: ");

            int choice;

            if (sc.hasNextInt()) {
                choice = sc.nextInt();
                sc.nextLine();
            } else {
                System.out.println("Invalid input! Enter a number.");
                sc.nextLine();
                choice = -1;
            }

            if (choice == 1) {

                System.out.print("Add your Complaint: ");
                String des = sc.nextLine();

                System.out.print("Enter priority (LOW / MEDIUM / HIGH) [Default: MEDIUM]: ");
                String priority = sc.nextLine().trim().toUpperCase();

                if (priority.isEmpty()) {
                    priority = "MEDIUM";
                }

                if (!priority.equals("LOW") && !priority.equals("MEDIUM") && !priority.equals("HIGH")) {
                    System.out.println("Invalid priority, defaulting to MEDIUM.");
                    priority = "MEDIUM";
                }

                // Save complaint
                complaintIds.add(idCounter);
                complaintDescriptions.add(des);
                complaintPriorities.add(priority);

                // Task 4/5: initialize same-index values
                ticketStates.add("OPEN");
                ticketOwners.add("UNASSIGNED");
                ticketNotes.add("");

                System.out.println("Complaint created! ID = " + idCounter);
                idCounter++;

            } else if (choice == 2) {

                if (complaintIds.isEmpty()) {
                    System.out.println("No complaints found.");
                } else {

                    System.out.println("\n--- Complaints List ---");
                    int i = 0;

                    while (i < complaintIds.size()) {
                        System.out.println(
                                "ID: " + complaintIds.get(i)
                                        + " | Description: " + complaintDescriptions.get(i)
                                        + " | Priority: " + complaintPriorities.get(i)
                                        + " | Status: " + ticketStates.get(i)
                                        + " | AssignedTo: " + ticketOwners.get(i)
                        );

                        if (!ticketNotes.get(i).isEmpty()) {
                            System.out.println("  Comments: " + ticketNotes.get(i));
                        }

                        i++;
                    }
                }

            } else if (choice == 3) {

                run = false;
                System.out.println("Exiting customer module...");

            } else {
                System.out.println("Invalid choice!");
            }
        }
    }
}

/*
========================================================
TASK 3 + TASK 4: Admin Module
========================================================
*/
class AdminModule {

    public static void main(String[] args) {

        // Ensure staff list exists even if customer module not opened yet
        if (CustomerModule.supportStaffNames.isEmpty()) {
            CustomerModule.supportStaffNames.add("ALI");
            CustomerModule.supportStaffNames.add("FATMA");
            CustomerModule.supportStaffNames.add("MOHAMMED");
        }

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Admin PIN: ");
        int pin;

        if (sc.hasNextInt()) {
            pin = sc.nextInt();
            sc.nextLine();
        } else {
            System.out.println("Invalid PIN!");
            sc.nextLine();
            return;
        }

        if (pin != 1234) {
            System.out.println("Wrong PIN!");
            return;
        }

        boolean run = true;

        while (run) {

            System.out.println("\n===== Admin Module =====");
            System.out.println("1) View all complaints");
            System.out.println("2) Search complaint by ID");
            System.out.println("3) Close a complaint");
            System.out.println("4) Assign complaint to Support Staff"); // TASK 4
            System.out.println("5) View assignments");                  // TASK 4
            System.out.println("6) Back");
            System.out.print("Choose: ");

            int choice;

            if (sc.hasNextInt()) {
                choice = sc.nextInt();
                sc.nextLine();
            } else {
                System.out.println("Invalid input!");
                sc.nextLine();
                choice = -1;
            }

            if (choice == 1) {

                if (CustomerModule.complaintIds.isEmpty()) {
                    System.out.println("No complaints found.");
                } else {

                    int i = 0;

                    while (i < CustomerModule.complaintIds.size()) {
                        System.out.println(
                                "ID: " + CustomerModule.complaintIds.get(i)
                                        + " | Desc: " + CustomerModule.complaintDescriptions.get(i)
                                        + " | Priority: " + CustomerModule.complaintPriorities.get(i)
                                        + " | Status: " + CustomerModule.ticketStates.get(i)
                                        + " | AssignedTo: " + CustomerModule.ticketOwners.get(i)
                        );
                        i++;
                    }
                }

            } else if (choice == 2) {

                System.out.print("Enter ID to search: ");
                int id;

                if (sc.hasNextInt()) {
                    id = sc.nextInt();
                    sc.nextLine();
                } else {
                    System.out.println("Invalid ID!");
                    sc.nextLine();
                    id = -1;
                }

                int idx = -1;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {
                    if (CustomerModule.complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("ID not found.");
                } else {

                    System.out.println(
                            "ID: " + CustomerModule.complaintIds.get(idx)
                                    + " | Desc: " + CustomerModule.complaintDescriptions.get(idx)
                                    + " | Priority: " + CustomerModule.complaintPriorities.get(idx)
                                    + " | Status: " + CustomerModule.ticketStates.get(idx)
                                    + " | AssignedTo: " + CustomerModule.ticketOwners.get(idx)
                    );

                    if (!CustomerModule.ticketNotes.get(idx).isEmpty()) {
                        System.out.println("Comments: " + CustomerModule.ticketNotes.get(idx));
                    }
                }

            } else if (choice == 3) {

                System.out.print("Enter ID to close: ");
                int id;

                if (sc.hasNextInt()) {
                    id = sc.nextInt();
                    sc.nextLine();
                } else {
                    System.out.println("Invalid ID!");
                    sc.nextLine();
                    id = -1;
                }

                int idx = -1;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {
                    if (CustomerModule.complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("ID not found.");
                } else if (CustomerModule.ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Already closed!");
                } else {
                    CustomerModule.ticketStates.set(idx, "CLOSED");
                    System.out.println("Complaint closed.");
                }

            } else if (choice == 4) {

                System.out.print("Enter complaint ID to assign: ");
                int idToAssign;

                if (sc.hasNextInt()) {
                    idToAssign = sc.nextInt();
                    sc.nextLine();
                } else {
                    System.out.println("Invalid ID!");
                    sc.nextLine();
                    idToAssign = -1;
                }

                int idx = -1;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {
                    if (CustomerModule.complaintIds.get(i) == idToAssign) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("Cannot assign: complaint does not exist.");
                } else if (CustomerModule.ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Cannot assign: complaint is CLOSED.");
                } else {

                    System.out.println("Available Staff: " + CustomerModule.supportStaffNames);
                    System.out.print("Enter staff name (example: ALI): ");
                    String staff = sc.nextLine().trim().toUpperCase();

                    boolean staffExists = false;
                    int s = 0;

                    while (s < CustomerModule.supportStaffNames.size()) {
                        if (CustomerModule.supportStaffNames.get(s).equals(staff)) {
                            staffExists = true;
                        }
                        s++;
                    }

                    if (!staffExists) {
                        System.out.println("Staff not found. Assignment not done.");
                    } else {
                        CustomerModule.ticketOwners.set(idx, staff);
                        System.out.println("Assigned successfully.");
                    }
                }

            } else if (choice == 5) {

                if (CustomerModule.complaintIds.isEmpty()) {
                    System.out.println("No complaints found.");
                } else {

                    System.out.println("--- Assignments ---");
                    int i = 0;

                    while (i < CustomerModule.complaintIds.size()) {
                        System.out.println(
                                "ID: " + CustomerModule.complaintIds.get(i)
                                        + " | Status: " + CustomerModule.ticketStates.get(i)
                                        + " | AssignedTo: " + CustomerModule.ticketOwners.get(i)
                        );
                        i++;
                    }
                }

            } else if (choice == 6) {
                run = false;
            } else {
                System.out.println("Invalid choice!");
            }
        }
    }
}

/*
========================================================
TASK 5: Support Staff Module
========================================================
*/
class SupportStaffModule {

    public static void main(String[] args) {

        if (CustomerModule.supportStaffNames.isEmpty()) {
            CustomerModule.supportStaffNames.add("ALI");
            CustomerModule.supportStaffNames.add("FATMA");
            CustomerModule.supportStaffNames.add("MOHAMMED");
        }

        Scanner sc = new Scanner(System.in);

        System.out.println("\n=== Support Staff Module ===");
        System.out.println("Available Staff: " + CustomerModule.supportStaffNames);
        System.out.print("Enter your staff name: ");
        String currentStaff = sc.nextLine().trim().toUpperCase();

        boolean staffOk = false;
        int s = 0;

        while (s < CustomerModule.supportStaffNames.size()) {
            if (CustomerModule.supportStaffNames.get(s).equals(currentStaff)) {
                staffOk = true;
            }
            s++;
        }

        if (!staffOk) {
            System.out.println("Staff not found. Returning...");
            return;
        }

        boolean run = true;

        while (run) {

            System.out.println("\n===== Support Menu (" + currentStaff + ") =====");
            System.out.println("1) View my assigned complaints");
            System.out.println("2) Add comment to a complaint");
            System.out.println("3) Close a complaint");
            System.out.println("4) Back");
            System.out.print("Choose: ");

            int choice;

            if (sc.hasNextInt()) {
                choice = sc.nextInt();
                sc.nextLine();
            } else {
                System.out.println("Invalid input!");
                sc.nextLine();
                choice = -1;
            }

            if (choice == 1) {

                boolean any = false;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {

                    if (CustomerModule.ticketOwners.get(i).equals(currentStaff)) {
                        any = true;

                        System.out.println(
                                "ID: " + CustomerModule.complaintIds.get(i)
                                        + " | Desc: " + CustomerModule.complaintDescriptions.get(i)
                                        + " | Priority: " + CustomerModule.complaintPriorities.get(i)
                                        + " | Status: " + CustomerModule.ticketStates.get(i)
                        );

                        if (!CustomerModule.ticketNotes.get(i).isEmpty()) {
                            System.out.println("  Comments: " + CustomerModule.ticketNotes.get(i));
                        }
                    }

                    i++;
                }

                if (!any) {
                    System.out.println("No complaints assigned to you.");
                }

            } else if (choice == 2) {

                System.out.print("Enter complaint ID to comment: ");
                int id;

                if (sc.hasNextInt()) {
                    id = sc.nextInt();
                    sc.nextLine();
                } else {
                    System.out.println("Invalid ID!");
                    sc.nextLine();
                    id = -1;
                }

                int idx = -1;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {
                    if (CustomerModule.complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("Complaint does not exist.");
                } else if (!CustomerModule.ticketOwners.get(idx).equals(currentStaff)) {
                    System.out.println("Not allowed: complaint assigned to another staff.");
                } else if (CustomerModule.ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Not allowed: complaint is CLOSED.");
                } else {

                    System.out.print("Enter your comment: ");
                    String comment = sc.nextLine().trim();

                    if (comment.isEmpty()) {
                        System.out.println("Empty comment not saved.");
                    } else {

                        String old = CustomerModule.ticketNotes.get(idx);

                        if (old.isEmpty()) {
                            CustomerModule.ticketNotes.set(idx, currentStaff + ": " + comment);
                        } else {
                            CustomerModule.ticketNotes.set(idx, old + " | " + currentStaff + ": " + comment);
                        }

                        System.out.println("Comment saved.");
                    }
                }

            } else if (choice == 3) {

                System.out.print("Enter complaint ID to close: ");
                int id;

                if (sc.hasNextInt()) {
                    id = sc.nextInt();
                    sc.nextLine();
                } else {
                    System.out.println("Invalid ID!");
                    sc.nextLine();
                    id = -1;
                }

                int idx = -1;
                int i = 0;

                while (i < CustomerModule.complaintIds.size()) {
                    if (CustomerModule.complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("Complaint does not exist.");
                } else if (!CustomerModule.ticketOwners.get(idx).equals(currentStaff)) {
                    System.out.println("Not allowed: complaint assigned to another staff.");
                } else if (CustomerModule.ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Already CLOSED.");
                } else {
                    CustomerModule.ticketStates.set(idx, "CLOSED");
                    System.out.println("Complaint closed successfully.");
                }

            } else if (choice == 4) {
                run = false;
            } else {
                System.out.println("Invalid choice!");
            }
        }
    }
}
