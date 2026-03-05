package org.example.fromrazan;


import java.util.ArrayList;
import java.util.Scanner;

public class Task3 {

    private static final String ADMIN_PIN = "1294";

    public static void setAdminPin(Scanner scanner, ArrayList<ComplaintsApp> complaintApps) {
        System.out.print("Enter Admin pin: ");
        String pin = scanner.nextLine();

        if (!pin.equals(ADMIN_PIN)) {
            System.out.println("access denied.");
            return;

        }
        System.out.println("access grand .");

        while (true) {
            System.out.println("\n-----Admin Menu--------");
            System.out.println("1. view all complaints");
            System.out.println("2.search complaint");
            System.out.println("3.close");
            System.out.println("4.exit");


            System.out.print("choose an option: ");
            String choice = scanner.nextLine();

            boolean session = true;

            if (choice.equals("1")) {
                viewCom(complaintApps);
            } else if (choice.equals("2")) {
                searchCom(scanner, complaintApps);
            } else if (choice.equals("3")) {
                closeComp(scanner, complaintApps);

            } else if (choice.equals("4")) {
                session = false;
            } else {
                System.out.println("invalid choice");
            }

        }
    }

    public static void viewCom(ArrayList<ComplaintsApp> complaintApps) {
        if (complaintApps.isEmpty()) {
            System.out.println("no complaint");
        } else {
            for (ComplaintsApp c : complaintApps) {
                System.out.println(c);
            }
        }

    }

    public static void searchCom(Scanner scanner, ArrayList<ComplaintsApp> complaintApps) {
        System.out.println("Enter complaint Id: ");
        int search = Integer.parseInt(scanner.nextLine());

        boolean found = false;
        for (ComplaintsApp c : complaintApps) {
            if (c.id == search) {
                System.out.println("search id : " + c);
                found = true;
                break;
            }
        }
        if (found) ;
        System.out.println("no complaint Id: ");

    }


    public static void closeComp(Scanner scanner, ArrayList<ComplaintsApp> complaintsApps) {
        System.out.println("To close, enter the complaint Id: ");
        int close = Integer.parseInt(scanner.nextLine());
        for (ComplaintsApp c : complaintsApps) {
            if (c.id == close) {
                if (c.status.equals("close ")) ;
                System.out.println("close");
            } else {
                c.status = "close";
                System.out.println("complaint id :" + close + "close successfuly");
            }
            return;

        }
        System.out.println("error");

    }
}



