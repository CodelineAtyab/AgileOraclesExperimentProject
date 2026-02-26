package org.example.fromkawther.erp;



import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class costomer {
        public enum Priority {
            LOW,
            MEDIUM,
            HIGH
        }

        public static class Complaint {
            private int complaintId;
            private String description;
            private Priority priority;

            public Complaint(int complaintId, String description, Priority priority) {
                this.complaintId = complaintId;
                this.description = description;
                this.priority = priority != null ? priority : Priority.MEDIUM;
            }

            @Override
            public String toString() {
                return "Complaint ID: " + complaintId +
                        "\nDescription: " + description +
                        "\nPriority: " + priority;
            }
        }

        public static class CustomerModule {
            private List<Complaint> complaints = new ArrayList<>();
            private Scanner sc = new Scanner(System.in);

            public void createComplaint() {
                System.out.println("=== Create New Complaint ===");

                int id = 0;
                while (true) {
                    System.out.print("Enter Complaint ID (numeric): ");
                    String input = sc.nextLine();
                    try {
                        id = Integer.parseInt(input);
                        if (id <= 0) {
                            System.out.println("ID must be positive.");
                            continue;
                        }
                        break;
                    } catch (NumberFormatException e) {
                        System.out.println("Invalid input. Please enter a numeric value.");
                    }
                }

                System.out.print("Enter Complaint Description: ");
                String description = sc.nextLine().trim();
                if (description.isEmpty()) description = "No description provided.";

                System.out.print("Select Priority (LOW/MEDIUM/HIGH) [default MEDIUM]: ");
                String priorityInput = sc.nextLine().trim().toUpperCase();

                Priority priority;
                switch (priorityInput) {
                    case "LOW":
                        priority = Priority.LOW;
                        break;
                    case "HIGH":
                        priority = Priority.HIGH;
                        break;
                    default:
                        priority = Priority.MEDIUM;
                        break;
                }

                Complaint complaint = new Complaint(id, description, priority);
                complaints.add(complaint);

                System.out.println("\n Complaint created successfully!");
                System.out.println(complaint);
            }

            public void listComplaints() {
                if (complaints.isEmpty()) {
                    System.out.println("No complaints found.");
                    return;
                }

                System.out.println("=== All Complaints ===");
                for (Complaint c : complaints) {
                    System.out.println(c);
                    System.out.println("----------------------");
                }
            }
        }

        public static void main(String[] args) {
            CustomerModule customerModule = new CustomerModule();
            Scanner sc = new Scanner(System.in);

            while (true) {
                System.out.println("\n=== Main Menu ===");
                System.out.println("1. Customer - Create Complaint");
                System.out.println("2. Customer - List Complaints");
                System.out.println("3. Exit");
                System.out.print("Select option: ");

                String choice = sc.nextLine();

                switch (choice) {
                    case "1":
                        customerModule.createComplaint();
                        break;
                    case "2":
                        customerModule.listComplaints();
                        break;
                    case "3":
                        System.out.println("Exiting...");
                        return;
                    default:
                        System.out.println("Invalid option. Try again.");
                }
            }
        }
    }



