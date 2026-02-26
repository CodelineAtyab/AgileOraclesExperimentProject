package org.example.fromibrahim;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {
    public static void main(String[] args) {

        Scanner inputBuffer1 = new Scanner(System.in);
        ArrayList<Integer> cutomerID = new ArrayList<>();
        ArrayList<String> cutomerDescription = new ArrayList<>();
        ArrayList<String> cutomerPriority = new ArrayList<>();

        String[] ticketPriority = {"Low", "Medium", "High"};
        boolean mainMenuRunning = true;

        while (mainMenuRunning) {

            System.out.println("Welcome to the main menu");
            System.out.println("The available options are:\n[1] Customer\n[2] Admin\n[3] Support Stuff\n[4] Exit");
            System.out.print("Please enter the number: ");


            if (inputBuffer1.hasNextInt()) {                                             //   Checking if Menu input is integer
                int userChoice = Integer.parseInt(inputBuffer1.nextLine());
                if (userChoice == 1) {
                    System.out.println("I have select Customer Menu");

                    //           ************* Complaint ID ****************
                    System.out.println("Please Enter Complaint ID: ");
                    if (inputBuffer1.hasNextInt()){                                       //  If ID input is integer
                        int inputID = Integer.parseInt(inputBuffer1.nextLine());

                        //         *********** Complaint Description ***********
                        System.out.println("Please Enter Complaint Description: ");
                        String inputDescription = inputBuffer1.nextLine();
                        boolean priorityRunning = true;

                        //        **************** Priority ******************
                        while (priorityRunning) {

                            System.out.println("The priorities Available are:\n[1] Low\n[2] Medium\n[3] High\n[4] Return to the Main Menu");
                            System.out.print("Please Enter a Number: ");
                            if (inputBuffer1.hasNextInt()) {                               //   If ID input is integer
                                int priorityChoice =inputBuffer1.nextInt();
                                inputBuffer1.nextLine();
                                String inputPriority;
                                if (priorityChoice == 1) {
                                    inputPriority = ticketPriority[0];
                                } else if (priorityChoice == 2) {
                                    inputPriority = ticketPriority[1];
                                } else if (priorityChoice == 3) {
                                    inputPriority = ticketPriority[2];
                                } else if (priorityChoice == 4) {
                                    priorityRunning = false;
                                    continue;  // Not saving the ticket
//                               } else if (priorityChoice.isEmpty()){
//                                    inputPriority = ticketPriority[1];
//                               }
                                }else {
                                    System.out.println("Please Enter From the Numbers Available!");
                                    continue; //Not saving the ticket
                                }
                                cutomerID.add(inputID);
                                cutomerDescription.add(inputDescription);
                                cutomerPriority.add(inputPriority);
                                System.out.println("The Complaint Successfully Created!");
                                priorityRunning = false;
                            } else {                                       // If the user enter anything except integer
                                System.out.println("Invalid Choice !");
                                inputBuffer1.nextLine();
                            }
                        }
                    }else {                                                 // If the user enter anything except integer
                        System.out.println("Invalid Choice !");
                        inputBuffer1.nextLine();
                    }
                } else if (userChoice == 2) {
                    System.out.println("I have Select Admin Menu");
                } else if (userChoice == 3) {
                    System.out.println("I have Select Support Stuff Menu");
                } else if (userChoice == 4) {
                    System.out.println("Exiting the Program ... ");
                    mainMenuRunning = false;
                } else {
                    System.out.print("Please Enter a Number From 1 to 4 !!!!\n");
                }
            }else {                                                        // If the user enter anything except integer
                System.out.println("Invalid Choice !");
                inputBuffer1.nextLine();
            }
            System.out.println();
        }
    }
}