package org.example.fromalharithalkindi;

import java.util.ArrayList;
import java.util.Scanner;

public class AdminDashboard {
    public static void main(String[] args) {
        //============future/86ewpkv92-cli-erp–admin-module-secure-access-complaint-management

        Scanner input = new Scanner(System.in);


        ArrayList<Integer> userId = new ArrayList<Integer>();
        ArrayList<String> userDes = new ArrayList<String>();
        ArrayList<String> levl = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<>();

        boolean run = true;

        String[] level = {" Low ", " Medium ", " High"};

        System.out.println("========== Admin Page ==========");


        int adminPin = 1212;
        boolean adminRun = true;
        complainStatus.add("open");


        System.out.println("enter your admin Pin:");
        int pin = Integer.parseInt(input.nextLine());
        while (adminRun) {


            if (pin == adminPin) {
                System.out.println("Login successful :)  ");

                System.out.println("=================================");
                System.out.println("1.View all complaints.\n" +
                        "2.Search complaint by ID.\n" +
                        "3.Close a complaint.\n" +
                        "4.Exit to Main Menu\n");
                System.out.print("choose number: ");
                int adminChoice = Integer.parseInt(input.nextLine());

                if (adminChoice == 1) {

                    System.out.println("complaint ID: " + userId);
                    System.out.println("User complaint: " + userDes);
                    System.out.println("Complaint priority : " + levl);


                } else if (adminChoice == 2) {
                    System.out.print("write ID Number ");
                    int search = Integer.parseInt(input.nextLine());
                    int searchIndex = userId.indexOf(search);
                    if (searchIndex != -1) {

                        System.out.printf("Ticket #[%s] Details\n: ", userId);
                        System.out.println("description:" + userDes.get(searchIndex));
                        System.out.println("Priority: " + levl.get(searchIndex));
                    } else {

                        System.out.println("ComplainID Is Mismatching or Incorrect, please try again\n........");
                    }


                } else if (adminChoice == 3) {
                    System.out.println("========== Closing complain");
                    System.out.print("Enter the complain Id: ");
                    int closingComplain = Integer.parseInt(input.nextLine());

                    int searchComplainIndex = userId.indexOf(closingComplain);

                    if (searchComplainIndex >= userId.size() || searchComplainIndex < 0) {

                        System.out.println("Try again");
                    } else {

                        System.out.println("Closing complain *******");
                        //changing the status from open to close
                        complainStatus.set(searchComplainIndex, "Closed");
                        System.out.printf("Successfully! \n closed the complain: #[%s] \n complain status changed to >>>>>>>>>> %s\n", userId.get(searchComplainIndex), complainStatus.get(searchComplainIndex));

                    }
                } else if (adminChoice == 4) {
                    adminRun = false;

                }


            } else if (pin != adminPin) {
                System.out.println("Password is Not Correct :/  ");
            }

        }
    }
}
