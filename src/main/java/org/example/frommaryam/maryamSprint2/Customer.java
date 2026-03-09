package org.example.frommaryam.maryamSprint2;

import java.util.Scanner;
import java.util.HashMap;


public class Customer {
    public static void main(String[] args) {
        HashMap<String, String> customerComplainsMap = new HashMap<>();
        Scanner SC = new Scanner(System.in);
        boolean keepRunning = true;
        while (keepRunning) {

            System.out.println("Welcome to the Main Menu :)");
            System.out.println("1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit");

            System.out.print("Please Enter Your Choice Here: ");
            int userChoise = SC.nextInt();
            SC.nextLine();

            //Customer
            if (userChoise == 1) {
                System.out.println("Hello Customer");
                System.out.println("Enter Complaint ID:");
                String customerID = SC.nextLine();
                System.out.println("Enter Complaint Description:");
                String customerDescription = SC.nextLine();
                System.out.println("Priority Options:\n" +
                        "1-LOW\n" +
                        "2-MEDIUM (default)\n" +
                        "3-HIGH");
                System.out.println("Select Priority Here:(enter 1,2 or 3)");
                String customerPriority = SC.nextLine();
                System.out.println("done, Thank you");
                if (customerPriority.equals("1")){
                    customerPriority = "LOW" ;
                }
                else if (customerPriority.equals("2")){
                    customerPriority = "MEDIUM" ;
                }
                else if (customerPriority.equals("3")){
                    customerPriority = "HIGH" ;
                }
                else {
                    customerPriority = "MEDIUM";
                }
                String descriptionAndPriority = customerDescription + " priority:" + customerPriority ;
                customerComplainsMap.put(customerID, descriptionAndPriority);

            }

            //to be determined
            else if (userChoise == 2) {
                System.out.println(customerComplainsMap);
                System.out.println("Hello Admin, sorry no other option now, we will take you to main menu");
            }
            else if (userChoise == 3) {
                System.out.println("Hello Support Staff, sorry no other option now, we will take you to main menu");

            }
            else if (userChoise == 4) {
                System.out.println("You are Out");
                keepRunning = false;
            }
            else {
                System.out.println("non-existing menu options, choose a valid option please");
            }

        }
    }
}