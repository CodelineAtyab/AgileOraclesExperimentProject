
import java.util.ArrayList;
import java.util.Scanner;

public class ERP {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        ArrayList<Integer> complaintID = new ArrayList<>();
        ArrayList<String> description = new ArrayList<>();
        ArrayList<String> priority = new ArrayList<>();

        boolean running = true;

        while (running) {

            System.out.println("\nMain Menu");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");

            System.out.print("Choose option: ");
            int choice = input.nextInt();
            input.nextLine();

            if (choice == 1) {

                System.out.print("Enter Complaint ID: ");
                int id = input.nextInt();
                input.nextLine();

                System.out.print("Enter Description: ");
                String desc = input.nextLine();

                System.out.print("Enter Priority (LOW / MEDIUM / HIGH): ");
                String pr = input.nextLine();

                if (pr.isEmpty()) {
                    pr = "MEDIUM";
                }

                complaintID.add(id);
                description.add(desc);
                priority.add(pr);

                System.out.println("Complaint created successfully!");

            }
            else if (choice == 4) {

                System.out.println("Exiting system...");
                running = false;

            }
            else {

                System.out.println("Invalid option!");

            }
        }

        input.close();
    }
}
