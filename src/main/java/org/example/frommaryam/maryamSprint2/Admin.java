package org.example.frommaryam.maryamSprint2;

import java.util.Scanner;
import java.util.HashMap;

public class Admin {
    public static void main(String[] args) {
        HashMap<String, String> customerComplainsMap = new HashMap<>();
        Scanner SC = new Scanner(System.in);
        boolean keepRunning = true;
        String adminPassword = "admin@123";
        String[] ClosedID = new String[10];

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

            //admin
            else if (userChoise == 2) {
                System.out.println("Enter password:");
                String passwordCheck = SC.nextLine();

                if (passwordCheck.equals(adminPassword)) {

                    System.out.println("1- View all complaints");
                    System.out.println("2- Search complaint by ID");
                    System.out.println("3- Close a complaint");
                    System.out.println("Select Option, Please enter 1,2 or 3:");

                    String adminOption = SC.nextLine();

                    if (adminOption.equals("1")) {
                        System.out.println("View Complaints: " + customerComplainsMap);
                    }

                    else if (adminOption.equals("2")) {
                        System.out.println("Enter complaint ID: ");
                        String searchByID = SC.nextLine();

                        System.out.println(customerComplainsMap.get(searchByID));
                        String complainsGet = customerComplainsMap.get(searchByID);
                        String updatedWithStates = complainsGet + "States: OPEN";
                        customerComplainsMap.put(searchByID, updatedWithStates);
                    }

                    else if (adminOption.equals("3")) {
                        System.out.println("Enter complaint ID you want to close: ");
                        String searchByID = SC.nextLine();

                        if (customerComplainsMap.containsKey(searchByID)) {

                            String complainsGet = customerComplainsMap.get(searchByID);

                            if (complainsGet.endsWith("CLOSED")) {
                                System.out.println("You can't close an already CLOSED complaint.");
                            }
                            else {
                                String updatedWithStates = complainsGet + " States: CLOSED";
                                customerComplainsMap.put(searchByID, updatedWithStates);
                                System.out.println("Complaint Closed Successfully.");
                            }

                        } else {
                            System.out.println("Complaint ID not found.");
                        }
                    }

                    else {
                        System.out.println("Choose valid choice");
                    }

                } else {
                    System.out.println("Incorrect password");
                }
            }


            //to be determined
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