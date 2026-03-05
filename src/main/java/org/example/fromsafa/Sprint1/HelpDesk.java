
import java.util.ArrayList;
import java.util.Scanner;

public class HelpDesk {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        ArrayList<Integer> complaintID = new ArrayList<>();
        ArrayList<String> description = new ArrayList<>();
        ArrayList<String> priority = new ArrayList<>();
        ArrayList<String> status = new ArrayList<>();
        ArrayList<String> staff = new ArrayList<>();

        int pin = 1234;
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
                status.add("OPEN");
                staff.add("Not Assigned");

                System.out.println("Complaint created successfully!");

            }

            else if (choice == 2) {

                System.out.print("Enter Admin PIN: ");
                int adminPin = input.nextInt();
                input.nextLine();

                if (adminPin == pin) {

                    System.out.println("\nAdmin Menu");
                    System.out.println("1. View Complaints");
                    System.out.println("2. Search Complaint");
                    System.out.println("3. Close Complaint");
                    System.out.println("4. Assign to Staff");
                    System.out.println("5. Back");

                    int adminChoice = input.nextInt();
                    input.nextLine();

                    if (adminChoice == 1) {

                        for (int i = 0; i < complaintID.size(); i++) {

                            System.out.println("ID: " + complaintID.get(i)
                                    + " | Desc: " + description.get(i)
                                    + " | Priority: " + priority.get(i)
                                    + " | Status: " + status.get(i)
                                    + " | Staff: " + staff.get(i));
                        }
                    }

                    else if (adminChoice == 2) {

                        System.out.print("Enter Complaint ID: ");
                        int search = input.nextInt();

                        boolean found = false;

                        for (int i = 0; i < complaintID.size(); i++) {

                            if (complaintID.get(i) == search) {

                                System.out.println("Description: " + description.get(i));
                                System.out.println("Priority: " + priority.get(i));
                                System.out.println("Status: " + status.get(i));
                                System.out.println("Staff: " + staff.get(i));

                                found = true;
                            }
                        }

                        if (!found) {
                            System.out.println("Complaint not found.");
                        }

                    }

                    else if (adminChoice == 3) {

                        System.out.print("Enter Complaint ID to close: ");
                        int closeID = input.nextInt();

                        for (int i = 0; i < complaintID.size(); i++) {

                            if (complaintID.get(i) == closeID) {

                                if (status.get(i).equals("CLOSED")) {
                                    System.out.println("Complaint already closed.");
                                } else {
                                    status.set(i, "CLOSED");
                                    System.out.println("Complaint closed.");
                                }

                            }

                        }

                    }

                    else if (adminChoice == 4) {

                        System.out.print("Enter Complaint ID: ");
                        int assignID = input.nextInt();
                        input.nextLine();

                        for (int i = 0; i < complaintID.size(); i++) {

                            if (complaintID.get(i) == assignID) {

                                if (status.get(i).equals("CLOSED")) {
                                    System.out.println("Cannot assign closed complaint.");
                                } else {

                                    System.out.print("Enter Staff Name: ");
                                    String staffName = input.nextLine();

                                    staff.set(i, staffName);

                                    System.out.println("Complaint assigned.");

                                }

                            }

                        }

                    }

                }

                else {
                    System.out.println("Incorrect PIN.");
                }

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
