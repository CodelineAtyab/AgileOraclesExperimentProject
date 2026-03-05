package org.example.fromalharith;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class SupportStaff {
    static Scanner scan = new Scanner(System.in);

    public static void main(String[] args) {
        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();

        ArrayList<String> supportStaff = new ArrayList<>();

        supportStaff.add("Hamed");
        supportStaff.add("Aisha");
        supportStaff.add("Fahad");



        boolean running = true;
        System.out.println("   (Choose: 1,2,3,4)");


        int idCounter = 1;
        boolean complaint = true;

        while (complaint) {

            String menu = scan.nextLine().trim();
            if (!menu.matches("[1-4]")) {
                System.out.println("Invalid input! Please enter a number between 1 and 4.");
                continue;
            }

            switch (menu) {
                case "1":
                    System.out.println("Customer");
                    Scanner sc = new Scanner(System.in);

                    // ArrayList for Complaints


                    System.out.println("<Please Enter Your Complaint>");

                    boolean work = true;
                    while (work) {

                        System.out.println("   1. Create Complaint");
                        System.out.println("   2. View Complaints");
                        System.out.println("   3. Exit");
                        System.out.print("Choose an Option: ");


                        String choice = sc.nextLine();

                        if (choice.equals("1")) {

                            System.out.println("Add your Complaint ");
                            String des = sc.nextLine();


                            System.out.print("Enter priority (Low / Medium / High): ");
                            String priority = sc.nextLine();


                            complaintIds.add(idCounter);
                            complaintDescriptions.add(des);
                            complaintPriorities.add(priority);

                            idCounter++;


                        } else if (choice.equals("2")) {

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


                        } else if (choice.equals("3")) {

                            work = false;

                            System.out.println("Exiting system...");

                        } else {
                            System.out.println("Invalid choice!");

                        }
                    }

                    break;

                case "2":

                    enum ComplaintStatus {
                        OPEN,
                        CLOSED
                    }



                    // Complaint Class
                    class Complaint {
                        private int id;
                        private String description;
                        private ComplaintStatus status;

                        public Complaint(int id, String description) {
                            this.id = id;
                            this.description = description;
                            this.status = ComplaintStatus.OPEN;
                        }

                        public int getId() {
                            return id;
                        }

                        public ComplaintStatus getStatus() {
                            return status;
                        }

                        public void closeComplaint() {
                            if (status == ComplaintStatus.CLOSED) {
                                System.out.println("Complaint is already CLOSED.");
                            } else {
                                status = ComplaintStatus.CLOSED;
                                System.out.println("Complaint closed successfully.");
                            }
                        }

                        public String toString() {
                            return "ID: " + id +
                                    " | Description: " + description +
                                    " | Status: " + status;
                        }
                    }

                    // Admin Module Class
                    class AdminModule {
                        private static final String ADMIN_PIN = "1234";
                        private List<Complaint> complaints;

                        public AdminModule(List<Complaint> complaints) {
                            this.complaints = complaints;
                        }

                        public boolean authenticate(String pin) {
                            return ADMIN_PIN.equals(pin);
                        }

                        public void viewAllComplaints() {
                            if (complaints.isEmpty()) {
                                System.out.println("No complaints found.");
                                return;
                            }

                            for (Complaint c : complaints) {
                                System.out.println(c);
                            }
                        }

                        public Complaint searchComplaintById(int id) {
                            for (Complaint c : complaints) {
                                if (c.getId() == id) {
                                    return c;
                                }
                            }
                            return null;
                        }
                    }

                    // Main Method

                    Scanner scanner = new Scanner(System.in);

                    // Sample complaints
                    List<Complaint> complaintList = new ArrayList<>();
                    complaintList.add(new Complaint(1, "Internet not working"));
                    complaintList.add(new Complaint(2, "Water leakage issue"));
                    complaintList.add(new Complaint(3, "Power outage complaint"));

                    AdminModule admin = new AdminModule(complaintList);

                    // Admin Login (3 Attempts)
                    int attempts = 0;
                    boolean authenticated = false;

                    while (attempts < 3) {
                        System.out.print("Enter Admin PIN: ");
                        String enteredPin = scanner.nextLine();

                        if (admin.authenticate(enteredPin)) {
                            authenticated = true;
                            break;
                        } else {
                            attempts++;
                            System.out.println("Incorrect PIN. Attempts left: " + (3 - attempts));
                        }
                    }

                    if (!authenticated) {
                        System.out.println("Too many failed attempts. Access Denied.");
                        scanner.close();
                        return;
                    }

                    System.out.println("\nAccess Granted!");

                    int choice;

                    do {
                        System.out.println("\n--- Admin Menu ---");
                        System.out.println("1. View All Complaints");
                        System.out.println("2. Search Complaint by ID");
                        System.out.println("3. Support Staff");
                        System.out.println("3. Close Complaint");
                        System.out.println("4. Exit");
                        System.out.print("Enter choice: ");

                        choice = scanner.nextInt();

                        switch (choice) {
                            case 1:
                                admin.viewAllComplaints();
                                break;
                            case 2:
                                System.out.print("Enter Complaint ID: ");
                                int searchId = scanner.nextInt();
                                Complaint found = admin.searchComplaintById(searchId);

                                if (found != null) {
                                    System.out.println(found);
                                } else {
                                    System.out.println("Complaint not found.");
                                }
                                break;
                            case 3:
                                System.out.print("Enter Support Staff: Hamed / Aisha / Fahad");




                            case 4:
                                System.out.print("Enter Complaint ID to close: ");
                                int closeId = scanner.nextInt();
                                Complaint toClose = admin.searchComplaintById(closeId);

                                if (toClose != null) {
                                    toClose.closeComplaint();
                                } else {
                                    System.out.println("Complaint not found.");
                                }
                                break;
                            case 5:
                                System.out.println("Exiting Admin Module.");
                                break;

                            default:
                                System.out.println("Invalid choice.");
                        }

                    } while (choice != 4);

                    break;


                case "3":
                    System.out.println("Support Staff");
                    break;

                case "4":
                    System.out.println("Exit the system");
                    running = false;
                    complaint = false;

                    break;


            }
        }

        scan.close();


    }
}
