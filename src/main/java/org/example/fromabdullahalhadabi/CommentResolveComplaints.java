package org.example.fromabdullahalhadabi;
import java.util.ArrayList;
import java.util.Scanner;



public class CommentResolveComplaints {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        // ===== Support staff list =====
        ArrayList<String> supportStaffNames = new ArrayList<>();
        supportStaffNames.add("ALI");
        supportStaffNames.add("FATMA");
        supportStaffNames.add("MOHAMMED");

        // ===== Complaints data =====
        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();

        // ===== Task 5 data (Assignments + Status + Comments) =====
        ArrayList<String> ticketStates = new ArrayList<>();   // OPEN / CLOSED
        ArrayList<String> ticketOwners = new ArrayList<>();   // staff name
        ArrayList<String> ticketNotes = new ArrayList<>();    // comments stored as text

        // ===== Example data (so it works immediately) =====
        complaintIds.add(1);
        complaintDescriptions.add("Internet not working");
        complaintPriorities.add("HIGH");
        ticketStates.add("OPEN");
        ticketOwners.add("ALI");       // assigned to ALI
        ticketNotes.add("");

        complaintIds.add(2);
        complaintDescriptions.add("System login problem");
        complaintPriorities.add("MEDIUM");
        ticketStates.add("OPEN");
        ticketOwners.add("FATMA");     // assigned to FATMA
        ticketNotes.add("FATMA: I am checking this issue");

        complaintIds.add(3);
        complaintDescriptions.add("Printer not responding");
        complaintPriorities.add("LOW");
        ticketStates.add("CLOSED");    // already closed
        ticketOwners.add("ALI");       // assigned to ALI
        ticketNotes.add("ALI: Resolved by restarting printer");

        // ===== Staff login =====
        System.out.println("=== Support Staff Module (Task 5) ===");
        System.out.println("Available Staff: " + supportStaffNames);
        System.out.print("Enter your staff name: ");
        String currentStaff = sc.nextLine().trim().toUpperCase();

        boolean staffOk = false;
        int s = 0;
        while (s < supportStaffNames.size()) {
            if (supportStaffNames.get(s).equals(currentStaff)) {
                staffOk = true;
            }
            s++;
        }

        if (!staffOk) {
            System.out.println("Staff not found. Exiting...");
            return;
        }

        boolean run = true;

        while (run) {

            System.out.println("\n===== Support Menu (" + currentStaff + ") =====");
            System.out.println("1) View my assigned complaints");
            System.out.println("2) Add comment to a complaint");
            System.out.println("3) Close (resolve) a complaint");
            System.out.println("4) Exit");
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

                // View only assigned complaints
                boolean any = false;
                int i = 0;

                while (i < complaintIds.size()) {

                    if (ticketOwners.get(i).equals(currentStaff)) {
                        any = true;

                        System.out.println(
                                "ID: " + complaintIds.get(i)
                                        + " | Desc: " + complaintDescriptions.get(i)
                                        + " | Priority: " + complaintPriorities.get(i)
                                        + " | Status: " + ticketStates.get(i)
                        );

                        if (!ticketNotes.get(i).isEmpty()) {
                            System.out.println("  Comments: " + ticketNotes.get(i));
                        }
                    }

                    i++;
                }

                if (!any) {
                    System.out.println("No complaints assigned to you.");
                }

            } else if (choice == 2) {

                // Add comment (only if assigned to me and not CLOSED)
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

                while (i < complaintIds.size()) {
                    if (complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("Complaint does not exist.");
                } else if (!ticketOwners.get(idx).equals(currentStaff)) {
                    System.out.println("Not allowed: complaint assigned to another staff.");
                } else if (ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Not allowed: complaint is CLOSED.");
                } else {

                    System.out.print("Enter your comment: ");
                    String comment = sc.nextLine().trim();

                    if (comment.isEmpty()) {
                        System.out.println("Empty comment not saved.");
                    } else {

                        // store comments properly (append)
                        String old = ticketNotes.get(idx);

                        if (old.isEmpty()) {
                            ticketNotes.set(idx, currentStaff + ": " + comment);
                        } else {
                            ticketNotes.set(idx, old + " | " + currentStaff + ": " + comment);
                        }

                        System.out.println("Comment saved.");
                    }
                }

            } else if (choice == 3) {

                // Close complaint (only if assigned to me and not already CLOSED)
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

                while (i < complaintIds.size()) {
                    if (complaintIds.get(i) == id) {
                        idx = i;
                    }
                    i++;
                }

                if (idx == -1) {
                    System.out.println("Complaint does not exist.");
                } else if (!ticketOwners.get(idx).equals(currentStaff)) {
                    System.out.println("Not allowed: complaint assigned to another staff.");
                } else if (ticketStates.get(idx).equals("CLOSED")) {
                    System.out.println("Already CLOSED.");
                } else {
                    ticketStates.set(idx, "CLOSED");
                    System.out.println("Complaint closed successfully.");
                }

            } else if (choice == 4) {
                run = false;
                System.out.println("Exiting support module...");
            } else {
                System.out.println("Invalid choice!");
            }
        }
    }
}

