package org.example.fromkawther.erp;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.HashMap;

class Complaint{
    int id;
    String description;
    String status;

    Complaint(int id, String description) {
        this.id = id;
        this.description = description;
        this.status = "OPEN";
    }
}

public class Staff {
    int id;
    String name;

    Staff(int id, String name) {
        this.id = id;
        this.name = name;
    }
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            ArrayList<Complaint> complaints = new ArrayList<>();
            ArrayList<Staff> staffList = new ArrayList<>();
            HashMap<Integer, Staff> assignment = new HashMap<>();

            complaints.add(new Complaint(1, "Problem A"));
            complaints.add(new Complaint(2, "Problem B"));

            staffList.add(new Staff(1, "Alice"));
            staffList.add(new Staff(2, "Bob"));

            System.out.print("Enter PIN: ");
            if (sc.nextInt() != 1234) {
                System.out.println("Wrong PIN");
                sc.close();
                return;
            }

            int choice;
            do {
                System.out.println("\n1. View Complaints");
                System.out.println("2. Close Complaint");
                System.out.println("3. Assign Complaint to Staff");
                System.out.println("4. Exit");
                System.out.print("Choose: ");
                choice = sc.nextInt();

                switch (choice) {
                    case 1:
                        for (Complaint c : complaints) {
                            Staff s = assignment.get(c.id);
                            String assigned = (s != null) ? s.name : "Not assigned";
                            System.out.println(c.id + " " + c.description + " " + c.status + " | Assigned to: " + assigned);
                        }
                        break;

                    case 2:
                        System.out.print("Enter Complaint ID to close: ");
                        int closeId = sc.nextInt();
                        boolean foundClose = false;
                        for (Complaint c : complaints) {
                            if (c.id == closeId) {
                                foundClose = true;
                                if (c.status.equals("CLOSED"))
                                    System.out.println("Already closed");
                                else {
                                    c.status = "CLOSED";
                                    System.out.println("Closed");
                                }
                                break;
                            }
                        }
                        if (!foundClose)
                            System.out.println("Not found");
                        break;

                    case 3 :
                        System.out.print("Enter Complaint ID to assign: ");
                        int assignId = sc.nextInt();
                        Complaint toAssign = null;
                        for (Complaint c : complaints)
                            if (c.id == assignId)
                                toAssign = c;

                        if (toAssign == null) {
                            System.out.println("Complaint does not exist.");
                            break;
                        }
                        if (toAssign.status.equals("CLOSED")) {
                            System.out.println("Cannot assign closed complaint.");
                            break;
                        }

                        System.out.println("Available Staff:");
                        for (Staff s : staffList)
                            System.out.println(s.id + ". " + s.name);

                        System.out.print("Choose staff ID: ");
                        int staffId = sc.nextInt();
                        Staff chosen = null;
                        for (Staff s : staffList)
                            if (s.id == staffId)
                                chosen = s;

                        if (chosen == null) {
                            System.out.println("Invalid staff choice.");
                            break;
                        }

                        assignment.put(toAssign.id, chosen);
                        System.out.println("Assigned to " + chosen.name);
                        break;

                    case 4:
                        System.out.println("Exit");
                        break;

                    default:
                        System.out.println("Wrong choice");
                }

            } while (choice != 4);

            sc.close();
        }
    }

