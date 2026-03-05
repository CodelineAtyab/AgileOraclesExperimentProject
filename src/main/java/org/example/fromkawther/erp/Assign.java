package org.example.fromkawther.erp;
import java.util.*;
public class Assign {


        public enum Priority {
            LOW, MEDIUM, HIGH
        }


        public enum Status {
            OPEN, CLOSED
        }


        public static class Complaint {
            int id;
            String description;
            Priority priority;
            Status status;

            public Complaint(int id, String description, Priority priority) {
                this.id = id;
                this.description = description;
                this.priority = priority != null ? priority : Priority.MEDIUM;
                this.status = Status.OPEN;
            }

            @Override
            public String toString() {
                return "ID: " + id + ", Desc: " + description +
                        ", Priority: " + priority + ", Status: " + status;
            }
        }

        // نموذج موظف الدعم
        public static class SupportStaff {
            int staffId;
            String name;

            public SupportStaff(int staffId, String name) {
                this.staffId = staffId;
                this.name = name;
            }

            @Override
            public String toString() {
                return staffId + " - " + name;
            }
        }
        private static Map<Integer, Complaint> complaints = new HashMap<>();
        private static Map<Integer, SupportStaff> staff = new HashMap<>();
        private static Map<Integer, Integer> assignments = new HashMap<>(); // complaintId -> staffId

        private static Scanner sc = new Scanner(System.in);

        public static void main(String[] args) {
            staff.put(1, new SupportStaff(1, "Alice"));
            staff.put(2, new SupportStaff(2, "Bob"));
            staff.put(3, new SupportStaff(3, "Charlie"));



            complaints.put(101, new Complaint(101, "Cannot login", Priority.HIGH));
            complaints.put(102, new Complaint(102, "Error on page", Priority.MEDIUM));
            complaints.put(103, new Complaint(103,"Request new feature", Priority.LOW));

            while (true) {
                System.out.println("\n=== Admin Menu ===");
                System.out.println("1. View Complaints");
                System.out.println("2. View Support Staff");
                System.out.println("3. Assign Complaint to Staff");
                System.out.println("4. View Assignments");
                System.out.println("5. Close Complaint");
                System.out.println("6. Exit");
                System.out.print("Select option: ");

                String choice = sc.nextLine();

                switch (choice) {
                    case "1":
                        viewComplaints();
                        break;
                    case "2":
                        viewStaff();
                        break;
                    case "3":
                        assignComplaint();
                        break;
                    case "4":
                        viewAssignments();
                        break;
                    case "5":
                        closeComplaint();
                        break;
                    case "6":
                        System.out.println("Exiting...");
                        return;
                    default:
                        System.out.println("Invalid option. Try again.");
                }
            }
        }

        private static void viewComplaints() {
            System.out.println("\n=== All Complaints ===");
            for (Complaint c : complaints.values()) {
                System.out.println(c);
            }
        }

        private static void viewStaff() {
            System.out.println("\n=== Support Staff ===");
            for (SupportStaff s : staff.values()) {
                System.out.println(s);
            }
        }

        private static void assignComplaint() {
            System.out.print("Enter Complaint ID to assign: ");
            int cid = Integer.parseInt(sc.nextLine());


            if (!complaints.containsKey(cid)) {
                System.out.println(" Complaint does not exist!");
                return;
            }

            Complaint c = complaints.get(cid);


            if (c.status == Status.CLOSED) {
                System.out.println(" Cannot assign a closed complaint!");
                return;
            }

            System.out.print("Enter Staff ID to assign to: ");
            int sid = Integer.parseInt(sc.nextLine());

            if (!staff.containsKey(sid)) {
                System.out.println(" Staff does not exist!");
                return;
            }

            assignments.put(cid, sid);
            System.out.println(" Complaint " + cid + " assigned to " + staff.get(sid).name);
        }

        private static void viewAssignments() {
            System.out.println("\n=== Assignments ===");
            if (assignments.isEmpty()) {
                System.out.println("No assignments found.");
                return;
            }
            for (Map.Entry<Integer, Integer> entry : assignments.entrySet()) {
                int cid = entry.getKey();
                int sid = entry.getValue();
                System.out.println("Complaint ID " + cid + " -> Staff: " + staff.get(sid).name);
            }
        }

        private static void closeComplaint() {
            System.out.print("Enter Complaint ID to close: ");
            int cid = Integer.parseInt(sc.nextLine());

            if (!complaints.containsKey(cid)) {
                System.out.println(" Complaint does not exist!");
                return;
            }

            complaints.get(cid).status = Status.CLOSED;
            System.out.println("Complaint " + cid + " is now CLOSED.");
        }
    }


