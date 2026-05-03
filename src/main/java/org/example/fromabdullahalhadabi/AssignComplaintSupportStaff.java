package org.example.fromabdullahalhadabi;
import java.util.ArrayList;
import java.util.Scanner;

class AssignComplaintSupportStaff {
public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);

    ArrayList<Integer> complaintIds = new ArrayList<>();
    ArrayList<String> complaintDescriptions = new ArrayList<>();
    ArrayList<String> complaintPriorities = new ArrayList<>();

    ArrayList<String> ticketStates = new ArrayList<>();
    ArrayList<String> ticketOwners = new ArrayList<>();

    ArrayList<String> supportStaffNames = new ArrayList<>();

    supportStaffNames.add("ALI");
    supportStaffNames.add("FATMA");
    supportStaffNames.add("MOHAMMED");

    // Example complaints (so system has data to test)
    complaintIds.add(1);
    complaintDescriptions.add("Internet not working");
    complaintPriorities.add("HIGH");
    ticketStates.add("OPEN");
    ticketOwners.add("UNASSIGNED");

    complaintIds.add(2);
    complaintDescriptions.add("System login problem");
    complaintPriorities.add("MEDIUM");
    ticketStates.add("OPEN");
    ticketOwners.add("UNASSIGNED");

    System.out.print("Enter Admin PIN: ");
    int pin;

    if (sc.hasNextInt()) {
        pin = sc.nextInt();
        sc.nextLine();
    } else {
        System.out.println("Invalid PIN!");
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
        System.out.println("4) Assign complaint to Support Staff");
        System.out.println("5) View assignments");
        System.out.println("6) Exit");
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

            if (complaintIds.isEmpty()) {
                System.out.println("No complaints found.");
            } else {

                int i = 0;

                while (i < complaintIds.size()) {

                    System.out.println(
                            "ID: " + complaintIds.get(i)
                                    + " | Desc: " + complaintDescriptions.get(i)
                                    + " | Priority: " + complaintPriorities.get(i)
                                    + " | Status: " + ticketStates.get(i)
                                    + " | AssignedTo: " + ticketOwners.get(i)
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

            while (i < complaintIds.size()) {

                if (complaintIds.get(i) == id) {
                    idx = i;
                }

                i++;
            }

            if (idx == -1) {

                System.out.println("ID not found.");

            } else {

                System.out.println(
                        "ID: " + complaintIds.get(idx)
                                + " | Desc: " + complaintDescriptions.get(idx)
                                + " | Priority: " + complaintPriorities.get(idx)
                                + " | Status: " + ticketStates.get(idx)
                                + " | AssignedTo: " + ticketOwners.get(idx)
                );
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

            while (i < complaintIds.size()) {

                if (complaintIds.get(i) == id) {
                    idx = i;
                }

                i++;
            }

            if (idx == -1) {

                System.out.println("ID not found.");

            } else if (ticketStates.get(idx).equals("CLOSED")) {

                System.out.println("Already closed!");

            } else {

                ticketStates.set(idx, "CLOSED");
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

            while (i < complaintIds.size()) {

                if (complaintIds.get(i) == idToAssign) {
                    idx = i;
                }

                i++;
            }

            if (idx == -1) {

                System.out.println("Cannot assign: complaint does not exist.");

            } else if (ticketStates.get(idx).equals("CLOSED")) {

                System.out.println("Cannot assign: complaint is CLOSED.");

            } else {

                System.out.println("Available Staff: " + supportStaffNames);
                System.out.print("Enter staff name: ");
                String staff = sc.nextLine().trim().toUpperCase();

                boolean staffExists = false;
                int s = 0;

                while (s < supportStaffNames.size()) {

                    if (supportStaffNames.get(s).equals(staff)) {
                        staffExists = true;
                    }

                    s++;
                }

                if (!staffExists) {

                    System.out.println("Staff not found.");

                } else {

                    ticketOwners.set(idx, staff);
                    System.out.println("Assigned successfully.");

                }
            }

        } else if (choice == 5) {

            System.out.println("\n--- Assignments ---");

            int i = 0;

            while (i < complaintIds.size()) {

                System.out.println(
                        "ID: " + complaintIds.get(i)
                                + " | Status: " + ticketStates.get(i)
                                + " | AssignedTo: " + ticketOwners.get(i)
                );

                i++;
            }

        } else if (choice == 6) {

            run = false;
            System.out.println("Exiting system...");

        } else {

            System.out.println("Invalid choice!");

        }
    }
}
}