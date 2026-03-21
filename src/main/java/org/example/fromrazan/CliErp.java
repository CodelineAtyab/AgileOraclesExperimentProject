package org.example.fromrazan;

import java.util.*;


public class CliErp {
        static class Complaint {

            String description;
            int id;
            String status;
            List<String> comments;
            String priority;
            String assignStaff;


            Complaint(int id, String description, String priority) {
                this.id = id;
                this.description = description;
                this.priority = priority;
                this.status = "OPEN";
                this.assignStaff = null;
                this.comments = new ArrayList<>();
            }

        }

        static Scanner scanner = new Scanner(System.in);
        static Map<Integer, Complaint> complaint = new HashMap<>();
        static final String ADMIN_PIN = "6347";

        public static void main(String[] args) {

            while (true) {

                System.out.println("   Main Menu   ");
                System.out.println("1.Customer  ");
                System.out.println("2.Admin  ");
                System.out.println("3.Support Staff  ");
                System.out.println("4.Exit  ");
                System.out.print("Enter your choice  : ");


                String choice = scanner.nextLine();
                switch (choice) {
                    case "1":
                        CustomerMenue(scanner, (ArrayList<Complaint>) complaint);
                        break;
                    case "2":
                        AdminM();
                        break;
                    case "3":
                        SupportStaff();
                        break;
                    case "4":
                        System.out.println("exiting ");
                        return;
                    default:
                        System.out.println("invalid option ");


                }
            }
        }

        static void CustomerMenue(Scanner scanner, ArrayList<Complaint> complaint) {
            System.out.println(" customer Module ");
            try {
                System.out.println("enter complaint ID: ");
                int id = Integer.parseInt(scanner.nextLine());
                if (complaint.contains(id)) {
                    System.out.println("complaint ID already exit ");
                    return;
                }
                System.out.println("enter complaint descrption: ");
                String description = scanner.nextLine();
                System.out.println("select priority");
                String priority = scanner.nextLine().trim().toUpperCase();
                if (priority.equals("1")) {
                    priority = "Low";
                } else if (priority.equals("2")) {
                    priority = "High";
                } else {
                    priority = "Medium";
                }
                Complaint c = new Complaint(id, description, priority);
                complaint.add(id, c);
                System.out.println("complaint created succefully " + id + "and priority" + priority);
            } catch (Exception e) {
                System.out.println("invalid input");
            }
        }

        static void AdminM() {
            System.out.print("Enter Admin pin: ");
            String pin = scanner.nextLine();
            if (!pin.equals(ADMIN_PIN)) {
                System.out.println("access denied.");
                return;
            }
            while (true) {
                System.out.println("\n-----Admin Menu--------");
                System.out.println("1. view all complaints");
                System.out.println("2.search complaint");
                System.out.println("3.close a complaint");
                System.out.println("4.assign complaint to staff");
                System.out.println("5.exit");
                System.out.print("choose an option: ");
                String choice = scanner.nextLine();
                switch (choice) {
                    case "1":
                        ViewAllComp();
                        break;
                    case "2":
                        Search(scanner, (ArrayList<Complaint>) complaint);
                        break;
                    case "3":
                        CloseComp(scanner, (ArrayList<Complaint>) complaint);
                        break;
                    case "4":
                        AssignComp();
                        break;
                    case "5":
                        Viewassign();
                        break;
                    case "6":
                        return;
                    default:
                        System.out.println("invalid option.");
                }

            }
        }

        static void ViewAllComp() {
            if (complaint.isEmpty()) {
                System.out.println(" no complaints available");
                return;
            }
            for (Complaint c : complaint.values()) {
                System.out.println("ID: " + c.id + "| description: " + c.description + " | prority:  " + c.priority + "| status :" + c.status + "|assign : " + (c.assignStaff == null ? "None" : c.assignStaff));
            }

        }

        static void Search(Scanner scanner, ArrayList<Complaint> complaint) {
            System.out.println("Enter complaint Id: ");
            int search = Integer.parseInt(scanner.nextLine());

            boolean found = false;
            for (Complaint c : complaint) {
                if (c.id == search) {
                    System.out.println("search id : " + c);
                    found = true;
                    break;
                }
            }
            if (found) ;
            System.out.println("no complaint Id: ");
        }

        public static void CloseComp(Scanner scanner, ArrayList<Complaint> complaint) {
            System.out.println("To close, enter the complaint Id: ");
            int close = Integer.parseInt(scanner.nextLine());
            for (Complaint c : complaint) {
                if (c == null) {
                    System.out.println("complainty not found");
                } else if (c.status.equals("close ")){
                    System.out.println("complaint already close");
                }
                else
                {
                    c.status = "close";
                    System.out.println("complaint id :" + close + "close successfuly");
                }
                return;
            }
            System.out.println("invalid input");
        }

        static void AssignComp() {
            System.out.println("enter complaint id to assign: ");
            try {
                int id = Integer.parseInt(scanner.nextLine());
                Complaint c = complaint.get(id);
                if (c == null) {
                    System.out.println("complaint not found");
                    return;
                }
                if (c.status.equals("CLOSED")) {
                    System.out.println("cannot assign closed complaint");
                    return;
                }

                System.out.println("enter support staff name : ");
                String staff = scanner.nextLine();
                c.assignStaff = staff;

                System.out.println("complaint" + id + "assigned to" + staff);
            } catch (Exception e) {
                System.out.println("invalid input");
            }
        }


        static void Viewassign() {
            for (Complaint c : complaint.values()) {
                if (c.assignStaff != null) {
                    System.out.println("complaint id" + c.id + "assign to" + c.assignStaff);
                }
            }
        }
        static void SupportStaff() {
            System.out.println("enter support staff name :");
            String staff = scanner.nextLine();
            while (true) {
                System.out.println("\n-----Admin Menu--------");
                System.out.println("1. view all complaints");
                System.out.println("2.search complaint");
                System.out.println("3.close a complaint");
                System.out.println("4.assign complaint to staff");
                System.out.println("5.exit");
                System.out.print("choose an option: ");
                String choice = scanner.nextLine();
                switch (choice) {
                    case "1":
                        Viewcom(staff);
                        break;
                    case "2":
                        Addcom(staff);
                        break;
                    case "3":
                        Closemy(staff);
                        break;
                    case "4":
                        return;
                    default:
                        System.out.println("invalid option ");
                }
            }
        }

        static void Viewcom(String staff){
            boolean found = false;
            for (Complaint c : complaint.values()){
                if (staff.equals(c.assignStaff)){
                    found = true;
                    System.out.println("id: " + c.id + " | description: " + c.description + " | Priority: " + c.priority +
                            " | Status: " + c.status + " | Comments: " + c.comments);
                }
            }
            if (!found) System.out.println("no complaint ");
        }

        static void Addcom(String staff){
            System.out.println("enter complaint id: ");
            try {
                int id = Integer.parseInt(scanner.nextLine());
                Complaint c = complaint.get(id);
                if (c == null || staff.equals(c.assignStaff) ){
                    System.out.println("you cannot comment");
                    return;
                }
                System.out.println("enter comment: ");
                System.out.print("Enter Comment: ");
                String comments = scanner.nextLine();
                c.comments.add(staff + ": " + comments);
                System.out.println("Comment added.");
            } catch (Exception e) {
                System.out.println("Invalid input.");
            }
        }
        static void Closemy(String staff){
            System.out.println("enter complaint id : ");
            try {
                int id = Integer.parseInt(scanner.nextLine());
                Complaint c = complaint.get(id);
                if (c == null || !staff.equals(c.assignStaff)){
                    System.out.println("you cannot close complaint");
                    return;
                }
                if (c.status.equals("closed")){
                    System.out.println("complaint already closed");
                }else {
                    c.status = "closed";
                    System.out.println("complaint " + id + " closed succefully ");
                }
            }catch (Exception e){
                System.out.println("invalid input ");
            }
        }
    }
