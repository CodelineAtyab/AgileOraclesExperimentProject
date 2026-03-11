package org.example.fromkawther.erp;
import java.util.*;

public class Support {

    // first:
    public enum Priority { LOW, MEDIUM, HIGH }

    // the status:
    public enum Status { OPEN, CLOSED }

    // example :
    public static class Complaint {
        int id;
        String description;
        Priority priority;
        Status status;
        List<String> comments = new ArrayList<>();

        public Complaint(int id, String description, Priority priority) {
            this.id = id;
            this.description = description;
            this.priority = priority != null ? priority : Priority.MEDIUM;
            this.status = Status.OPEN;
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ID: ").append(id)
                    .append(", Desc: ").append(description)
                    .append(", Priority: ").append(priority)
                    .append(", Status: ").append(status);
            if (!comments.isEmpty()) {
                sb.append("\n  Comments:");
                for (String c : comments) sb.append("\n    - ").append(c);
            }
            return sb.toString();
        }
    }

    // example about support stuff:
    public static class SupportStaff {
        int staffId;
        String name;

        public SupportStaff(int staffId, String name) {
            this.staffId = staffId;
            this.name = name;
        }
    }

    // DB ERP:
    private static Map<Integer, Complaint> complaints = new HashMap<>();
    private static Map<Integer, SupportStaff> staff = new HashMap<>();
    private static Map<Integer, Integer> assignments = new HashMap<>(); // complaintId -> staffId
    private static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

        // the support teams add example:
        staff.put(1, new SupportStaff(1, "Alice"));
        staff.put(2, new SupportStaff(2, "Bob"));


        complaints.put(101, new Complaint(101, "Cannot login", Priority.HIGH));
        complaints.put(102, new Complaint(102, "Error on page", Priority.MEDIUM));


        assignments.put(101, 1); // Alice
        assignments.put(102, 2); // Bob

        System.out.print("Enter your Staff ID to login: ");
        int loginId = Integer.parseInt(sc.nextLine());

        if (!staff.containsKey(loginId)) {
            System.out.println(" Invalid Staff ID. Exiting...");
            return;
        }

        System.out.println(" Welcome " + staff.get(loginId).name);

        while (true) {
            System.out.println("\n=== Support Menu ===");
            System.out.println("1. View My Complaints");
            System.out.println("2. Add Comment to Complaint");
            System.out.println("3. Close Complaint");
            System.out.println("4. Exit");
            System.out.print("Select option: ");
            String choice = sc.nextLine();

            switch (choice) {
                case "1":
                    viewMyComplaints(loginId);
                    break;
                case "2":
                    addComment(loginId);
                    break;
                case "3":
                    closeComplaint(loginId);
                    break;
                case "4":
                    System.out.println("Exiting...");
                    return;
                default:
                    System.out.println("Invalid option.");
            }
        }
    }

    private static void viewMyComplaints(int staffId) {
        System.out.println("\n=== My Assigned Complaints ===");
        boolean has = false;
        for (Map.Entry<Integer, Integer> entry : assignments.entrySet()) {
            if (entry.getValue() == staffId) {
                System.out.println(complaints.get(entry.getKey()));
                System.out.println("---------------------");
                has = true;
            }
        }
        if (!has) System.out.println("No complaints assigned to you.");
    }

    private static void addComment(int staffId) {
        System.out.print("Enter Complaint ID to comment: ");
        int cid = Integer.parseInt(sc.nextLine());

        // chek:
        if (!assignments.containsKey(cid) || assignments.get(cid) != staffId) {
            System.out.println(" You are not assigned to this complaint!");
            return;
        }

        Complaint c = complaints.get(cid);

        // status:
        if (c.status == Status.CLOSED) {
            System.out.println(" Cannot comment on a closed complaint!");
            return;
        }

        System.out.print("Enter your comment: ");
        String comment = sc.nextLine();
        c.comments.add(comment);
        System.out.println("Comment added successfully.");
    }

    private static void closeComplaint(int staffId) {
        System.out.print("Enter Complaint ID to close: ");
        int cid = Integer.parseInt(sc.nextLine());


        if (!assignments.containsKey(cid) || assignments.get(cid) != staffId) {
            System.out.println(" You are not assigned to this complaint!");
            return;
        }

        Complaint c = complaints.get(cid);

        if (c.status == Status.CLOSED) {
            System.out.println(" Complaint is already closed!");
            return;
        }

        c.status = Status.CLOSED;
        System.out.println("Complaint closed successfully.");
    }
}
