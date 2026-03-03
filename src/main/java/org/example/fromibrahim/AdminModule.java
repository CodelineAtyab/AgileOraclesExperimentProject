package org.example.fromibrahim;

import java.util.ArrayList;
import java.util.Scanner;

public class AdminModule {
    public static void main(String[] args) {

        Scanner inputBuffer1 = new Scanner(System.in);
        ArrayList<Integer> cutomerID = new ArrayList<>();
        ArrayList<String> cutomerDescription = new ArrayList<>();
        ArrayList<String> cutomerPriority = new ArrayList<>();
        ArrayList<String> complaintStatus = new ArrayList<>();

        String[] ticketPriority = {"Low", "Medium", "High"};
        boolean mainMenuRunning = true;

        while (mainMenuRunning) {

            System.out.println("Welcome to the main menu");
            System.out.println("The available options are:\n[1] Customer\n[2] Admin\n[3] Support Stuff\n[4] Exit");
            System.out.print("Please enter the number: ");

// ********************************************* Customer *******************************************************
            if (inputBuffer1.hasNextInt()) {                                             //   Checking if Menu input is integer
                int userChoice = Integer.parseInt(inputBuffer1.nextLine());
                if (userChoice == 1) {
                    System.out.println("I have select Customer Menu");

                    //           ************* Complaint ID ****************
                    System.out.println("Please Enter Complaint ID: ");
                    if (inputBuffer1.hasNextInt()) {                                       //  If ID input is integer
                        int inputID = Integer.parseInt(inputBuffer1.nextLine());

                        //         *********** Complaint Description ***********
                        System.out.println("Please Enter Complaint Description: ");
                        String inputDescription = inputBuffer1.nextLine();
                        boolean priorityRunning = true;

                        //        **************** Priority ******************
                        while (priorityRunning) {

                            System.out.println("The priorities Available are:\n[1] Low\n[2] Medium\n[3] High\n[4] Type Return to go back to the Main Menu");
                            System.out.print("Please Enter the Priority Word: ");
                            String priorityChoice = inputBuffer1.nextLine().trim().toLowerCase(); //any kind of letter will be changed to a lower case
                            String inputPriority;
                            if (priorityChoice.equals("low")) {
                                inputPriority = ticketPriority[0];
                            } else if (priorityChoice.equals("medium")) {
                                inputPriority = ticketPriority[1];
                            } else if (priorityChoice.equals("high")) {
                                inputPriority = ticketPriority[2];
                            } else if (priorityChoice.equals("return")) {
                                System.out.println("Returning to the Main Menu...");
                                priorityRunning = false;
                                continue;                                   // Not saving the ticket
                            } else if (priorityChoice.isEmpty()) {
                                inputPriority = ticketPriority[1];
                            } else {
                                System.out.println("Please Enter the Word: Low or Medium or High or Return !!!!");
                                continue;                                    //Not saving the ticket
                            }
                            cutomerID.add(inputID);
                            cutomerDescription.add(inputDescription);
                            cutomerPriority.add(inputPriority);
                            complaintStatus.add("Open");

                            System.out.println("The Complaint Successfully Created!");
                            priorityRunning = false;
                        }
                    } else {                                                 // If the user enter anything except integer in the Compliant ID
                        System.out.println("Invalid Choice !");
                        inputBuffer1.nextLine();
                    }
// ********************************************** Admin ********************************************
                } else if (userChoice == 2) {
                    System.out.println("I have Select Admin Menu");
                    System.out.println("Please Enter your Valid PIN");
                    if (inputBuffer1.hasNextInt()) {
                        int adminPIN = Integer.parseInt(inputBuffer1.nextLine());
                        if (adminPIN == 1122) {
                            boolean adminRunning = true;
                            while (adminRunning) {
                                System.out.println("Your PIN is Correct !");
                                System.out.println("Please Enter a number from the Following: ");
                                System.out.println("[1] View All Complaints\n[2] Search Complaint by ID\n[3] Close a Complaint\n[4] Back to the main menu ");
                                if (inputBuffer1.hasNextInt()) {
                                    int adminChoice = Integer.parseInt(inputBuffer1.nextLine());
                                    if (adminChoice == 1) {
                                        for (int i = 0; i < cutomerID.size(); i++) {
                                            System.out.printf("Customer ID: %s\n", cutomerID.get(i));
                                            System.out.printf("Customer Description: %s\n", cutomerDescription.get(i));
                                            System.out.printf("Customer priorities: %s\n", cutomerPriority.get(i));
                                            System.out.println();
                                        }
                                    } else if (adminChoice == 2) {
                                        System.out.println("Please Enter the ID: ");
                                        int searchID = inputBuffer1.nextInt();
                                        int index = cutomerID.indexOf(searchID);
                                        if (index != -1) {
                                            System.out.println("The Customer ID is: " + cutomerID.get(index));
                                            System.out.println("The Description is: " + cutomerDescription.get(index));
                                            System.out.println("The Priority is: " + cutomerPriority.get(index));

                                        } else {
                                            System.out.println("The Complaint not found!!!!!");
                                        }
                                    }else if (adminChoice == 3){
                                        System.out.println("Please Enter the Complaint ID that you want to close: ");
                                        int searchID = inputBuffer1.nextInt();
                                        int index = cutomerID.indexOf(searchID);
                                        if (index != -1) {
                                            if (complaintStatus.get(index).equals("CLOSED")) {
                                                System.out.println("Complaint already CLOSED!");
                                            } else {
                                                complaintStatus.set(index, "CLOSED");
                                                System.out.println("Complaint successfully CLOSED.");
                                            }
                                        } else {
                                            System.out.println("The Complaint not found!!!!!");
                                        }
                                    } else if(adminChoice == 4){
                                        System.out.println("Exiting The Main Menu...");
                                        adminRunning = false;
                                    } else {
                                        System.out.println("Invalid Choice!!!!");
                                    }
                                } else {                                                 // If the user enter anything except integer in the Admin Choice
                                    System.out.println("Invalid Choice !");
                                    inputBuffer1.nextLine();
                                }
                            }
                        }
                    } else {                                                 // If the user enter anything except integer in the PIN
                        System.out.println("Invalid Choice !");
                        inputBuffer1.nextLine();
                    }
                } else if (userChoice == 3) {
                    System.out.println("I have Select Support Stuff Menu");
                } else if (userChoice == 4) {
                    System.out.println("Exiting the Program ... ");
                    mainMenuRunning = false;
                } else {
                    System.out.print("Please Enter a Number From 1 to 4 !!!!\n");
                }
            } else {                                                        // If the user enter anything except integer in the Main Menu
                System.out.println("Invalid Choice !");
                inputBuffer1.nextLine();
            }
            System.out.println();
        }
    }
}
