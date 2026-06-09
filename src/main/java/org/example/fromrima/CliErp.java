package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class CliErp {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ArrayList<Complaint> complaints = new ArrayList<>();
        while (true) {
            System.out.println("\n-------- Main Menu --------");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Assign Complaint");
            System.out.println("5. Exit");
            int choice = input.nextInt();
            switch (choice) {
                case 1:
                    CustomerModule.customerMenu(input, complaints);
                    break;
                case 2:
                    AdminModule.adminMenu(input, complaints);
                    break;
                case 3:
                    StaffModule.staffMenu(input, complaints);
                    break;
                case 4:
                    AdminModule.assignComplaint(input, complaints);
                    break;
                case 5:
                    System.out.println("Good Bye");
                    System.exit(0);
                default:
                    System.out.println("Invalid Choice");
            }
        }
    }
}
