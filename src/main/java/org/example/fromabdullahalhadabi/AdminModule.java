package org.example.fromabdullahalhadabi;
import java.util.Scanner;

public class AdminModule {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);


        System.out.print("Enter Admin PIN: ");
        int pin = sc.nextInt();
        sc.nextLine();

        if (pin != 1234) {
            System.out.println("Wrong PIN!");
            return;
        }


        boolean run = true;

        while (run) {

            System.out.println("===== Admin Module =====");
            System.out.println("1. View all complaints ");
            System.out.println("2. Search complaint by ID ");
            System.out.println("3. Close a complaint ");
            System.out.println("4. Back ");
            System.out.println(" --choose your option-- ");

            int choice = sc.nextInt();
            sc.nextLine();



            if (choice == 1) {

                for (int i = 0; i < CustomerModule.ids.size(); i++) {
                    System.out.println(
                            "ID: " + CustomerModule.ids.get(i) +
                                    " | Desc: " + CustomerModule.descriptions.get(i) +
                                    " | Priority: " + CustomerModule.priorities.get(i) +
                                    " | Status: " + CustomerModule.status.get(i)
                    );
                }

            }
            else if (choice == 2) {

                System.out.print("Enter ID to close: ");
                int id = sc.nextInt();
                sc.nextLine();

                boolean found = false;

                for (int i = 0; i < CustomerModule.ids.size(); i++) {
                    if (CustomerModule.ids.get(i) == id) {
                        found = true;

                        if (CustomerModule.status.get(i).equals("CLOSED")) {
                            System.out.println("Already closed!");
                        } else {
                            CustomerModule.status.set(i, "CLOSED");
                            System.out.println("Complaint closed.");
                        }
                    }
                }

                if (!found) {
                    System.out.println("ID not found.");
                }
            }
            else if (choice == 3) {
                run = false;
            }
        }
    }
}

