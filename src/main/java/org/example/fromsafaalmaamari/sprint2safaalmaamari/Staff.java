package org.example.fromsafaalmaamari.sprint2safaalmaamari;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
public class Staff {

    public static void main(String[] args) {
        Scanner scanner = new Scanner((System.in));
        boolean keepRunning = true;
        ArrayList<Complaint> complaints = new ArrayList<>();
        HashMap<Integer, String> assignedCompliant = new HashMap<>();

        while (keepRunning) {
            System.out.println(" Main Menu: ");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("Choose an Option: ");
            int userOption = scanner.nextInt();
            scanner.nextLine();

            if (userOption == 1) {
                boolean keepRunningForOp1 = true;
                int complaintId = 0;

                while (keepRunningForOp1) {
                    System.out.print("Enter Complaint ID: ");
                    if (scanner.hasNextInt()) {
                        complaintId = scanner.nextInt();
                        keepRunningForOp1 = false;

                    } else {
                        System.out.println("Invalid Input please try again");
                        scanner.next();
                    }
                }
                scanner.nextLine();
                System.out.print("Enter Complaint Description: ");
                String complaintDesc = scanner.nextLine();
                System.out.println("Select Priority: ");
                System.out.println("1. LOW");
                System.out.println("2. MEDIUM (default)");
                System.out.println("3. HIGH");
                System.out.println("Select priority");
                String selectedPriority = scanner.nextLine();
                String priority;
                if (selectedPriority.equals("1")) {
                    priority = "LOW";
                } else if (selectedPriority.equals("3")) {
                    priority = "HIGH";
                } else {
                    priority = "MEDIUM";
                }
                Complaint complaint = new Complaint(complaintId, complaintDesc, priority, "OPEN");
                complaints.add(complaint);
                System.out.println(" Complaint Created Successfully..");
                System.out.println();
            } else if (userOption == 2) {
                System.out.println("Admin Option");
                String adminPin = "54321";
                System.out.println("Enter Admin PIN: ");
                String enterAdminPin = scanner.nextLine();

                if (enterAdminPin.equals(adminPin)) {
                    System.out.println("successful log...");
                    System.out.println("1. View all Complaints.");
                    System.out.println("2. Search Complaints by ID.");
                    System.out.println("3. Close a Complaint.");
                    System.out.println("4. Assign Complaints to Support Staff members.");
                    System.out.println("5. View Assigned Complaints.");
                    System.out.println("Select an Option: ");
                    int choice = scanner.nextInt();
                    if (choice == 1) {
                        for (int i = 0; i < complaints.size(); i++) {
                            System.out.println("complaint id = " + complaints.get(i).complaintId + " ,complaint description:  " + complaints.get(i).complaintDesc +
                                    ", complaint priority: " + complaints.get(i).priority + ", Status: " + complaints.get(i).status);
                        }
                    } else if (choice == 2) {
                        System.out.println("Enter Complaint ID: ");
                        int complaintId = scanner.nextInt();
                        scanner.nextLine();
                        for (int i = 0; i < complaints.size(); i++) {
                            if (complaints.get(i).complaintId == complaintId) {
                                System.out.println("complaint id = " + complaints.get(i).complaintId + " ,complaint description: " + complaints.get(i).complaintDesc +
                                        ",complaint priority: " + complaints.get(i).priority + ",Status: " + complaints.get(i).status);
                            }
                        }
                    } else if (choice == 3) {
                        System.out.println("Enter Complaint ID to close: ");
                        int complaintId = scanner.nextInt();
                        scanner.nextLine();
                        for (int i = 0; i < complaints.size(); i++) {
                            if (complaints.get(i).complaintId == complaintId) {
                                if (complaints.get(i).status.equals("Close")) {
                                    System.out.println("complaint already closed");
                                } else {
                                    complaints.get(i).status = "Close";
                                    System.out.println("Complaint Closed.");
                                }
                            }
                        }
                    } else if (choice == 4) {
                        System.out.println("Enter Complaint ID to assign: ");
                        int complaintId = scanner.nextInt();
                        scanner.nextLine();
                        boolean checkId = false;
                        for (int i = 0; i < complaints.size(); i++) {
                            if (complaints.get(i).complaintId == complaintId) {

                                checkId = true;
                                if (complaints.get(i).status.equals("Close")) {
                                    System.out.println("Cannot assign closed complaint.");
                                } else {
                                    System.out.println("Enter Staff Name: ");
                                    String staffName = scanner.nextLine();
                                    assignedCompliant.put(complaintId, staffName);
                                    System.out.println("Complaint assigned successfully.");
                                }
                            }
                        }
                        if (!checkId) {
                            System.out.println("Complaint not found.");
                        }
                    } else if (choice == 5) {
                        if (assignedCompliant.isEmpty()) {
                            System.out.println("No assignments yet.");
                        } else {
                            for (Map.Entry<Integer, String> entry : assignedCompliant.entrySet()) {
                                System.out.println("Complaint ID: " + entry.getKey() + " Assigned to: " + entry.getValue());
                            }
                        }
                    }
                } else {
                    System.out.println("Incorrect Admin PIN!");
                }
            } else if (userOption == 3) {
                System.out.println("Support Staff option");
                System.out.println("Enter you name: ");
                String supportStaffName = scanner.nextLine();

                boolean hasComlpain = false;
                for (Map.Entry<Integer, String> entry : assignedCompliant.entrySet()) {
                    if (entry.getValue().equals(supportStaffName)) {
                        for (int i = 0; i < complaints.size(); i++) {
                            if (complaints.get(i).complaintId == entry.getKey()) {

                                hasComlpain = true;
                                System.out.println("Complaint ID: "+ complaints.get(i).complaintId +  " ,Description: "+complaints.get(i).complaintDesc +
                                        " ,Priority: "+complaints.get(i).priority +  " ,Status: " +complaints.get(i).status);
                            }
                        }
                    }
                }
                if (!hasComlpain) {
                    System.out.println("No Complaints assigned to you...");
                }else {
                    System.out.println("Enter Complaint ID to close: ");
                    int complaintId = scanner.nextInt();
                    scanner.nextLine();
                    boolean valid = false;
                    for (Map.Entry<Integer, String> entry : assignedCompliant.entrySet()) {
                        if (entry.getKey()== complaintId && entry.getValue().equals(supportStaffName)){
                            for (int i = 0; i < complaints.size(); i++) {
                                if (complaints.get(i).complaintId == complaintId) {

                                    valid = true;

                                    if (complaints.get(i).status.equals("Close")) {
                                        System.out.println("Complaint already closed.");
                                    }else {
                                        complaints.get(i).status = "Close";
                                        System.out.println("Complaint Closed successfully.");
                                    }
                                }
                            }
                        }
                    }
                    if (!valid) {
                        System.out.println("You cannot close this complaint.");
                    }
                }
            } else if (userOption == 4) {
                System.out.println(" Exit...");
                keepRunning = false;
            } else {
                System.out.println("invalid option");
            }
        }
    }
}