import java.util.ArrayList;
import java.util.Scanner;


public class Main {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        boolean isRunning = true;

        while (isRunning) {

            // Display Main Menu
            System.out.println("\n=====CLI ERP SYSTEM=====");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");

            int choice;

            try {
                choice = scanner.nextInt();
            } catch (Exception e) {
                System.out.println("Invalid input! Please enter numbers only.");
                scanner.nextLine(); // clear wrong input
                continue; // go back to menu
            }

            switch (choice) {
                case 1:
                    System.out.println("Customer module selected.");
                    break;

                case 2:
                    System.out.println("Admin module selected.");
                    break;

                case 3:
                    System.out.println("Support Staff module selected.");
                    break;

                case 4:
                    System.out.println("Exiting system... Goodbye!");
                    isRunning = false;
                    break;

                default:
                    System.out.println("Invalid option! Please choose between 1-4.");
            }
        }
        scanner.close();
    }

    public static void createComplaint(Scanner scanner, ArrayList<Complaint> complaints) {
        int complaintId;

        while (true) {
            System.out.println("Enter Complaint ID: ");
            try {
                complaintId = Integer.parseInt(scanner.nextLine());
                break;
            } catch (Exception e) {
                System.out.println("invalid ID! Please enter numbers only");
            }
        }

        System.out.println("Enter Complaint Description");
        String description = scanner.nextLine();

        System.out.println("Select Priority: ");
        System.out.println("1. Low");
        System.out.println("2. Medium");
        System.out.println("1. High");
        System.out.println("Choose option (1-3 pr press Enter for Default");

        String priority = "Medium"; //default
        String input = scanner.nextLine().trim();

        if (input.equals("1")) {
            priority = "Low";
        } else if (input.equals("3")) {
            priority = "High";
        } else if (input.equals("2")) {
            priority = "Medium";
        } else {
            System.out.println("Invalid priority selection. Default set to Medium");
        }

        // create object
        Complaint complaint = new Complaint(complaintId, description, priority);

        //store complaint
        complaints.add(complaint);

        System.out.println("Complaint Created Successfully ");
        System.out.println(complaint);
    }
}