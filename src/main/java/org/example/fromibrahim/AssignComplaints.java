package org.example.fromibrahim;

import java.util.ArrayList;
import java.util.Scanner;

public class AssignComplaints {
    public static void main(String[] args) {

        Scanner inputBuffer1 = new Scanner(System.in);
        ArrayList<Integer> cutomerID = new ArrayList<>();
        ArrayList<String> cutomerDescription = new ArrayList<>();
        ArrayList<String> cutomerPriority = new ArrayList<>();
        ArrayList<String> complaintStatus = new ArrayList<>();
        ArrayList<String> assignment = new ArrayList<>();

        String[] ticketPriority = {"Low", "Medium", "High"};
        boolean mainMenuRunning = true;

        while (mainMenuRunning) {
            System.out.println("Welcome to the main menu");
            System.out.println("The available options are:\n[1] Customer\n[2] Admin\n[3] Support Stuff\n[4] Exit");
            System.out.print("Please enter the number: ");

//       ********************************************* Customer *******************************************************
            // Checking if Menu input is integer
            if (inputBuffer1.hasNextInt()) {
                int userChoice = Integer.parseInt(inputBuffer1.nextLine());
                if (userChoice == 1) {
                    System.out.println("I have select Customer Menu");

                    //           ************* Complaint ID ****************
                    System.out.println("Please Enter Complaint ID: ");

                    //  If ID input is integer
                    if (inputBuffer1.hasNextInt()) {
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
                                continue; // Not saving the ticket
                            } else if (priorityChoice.isEmpty()) {
                                inputPriority = ticketPriority[1];
                            } else {
                                System.out.println("Please Enter the Word: Low or Medium or High or Return !!!!");
                                continue; // Not saving the ticket
                            }
                            cutomerID.add(inputID);
                            cutomerDescription.add(inputDescription);
                            cutomerPriority.add(inputPriority);
                            complaintStatus.add("Open");
                            assignment.add("Not-Assigned");

                            System.out.println("The Complaint Successfully Created!");
                            priorityRunning = false;
                        }
                    } else {   // If the user enter anything except integer in the Compliant ID
                        System.out.println("Invalid Choice !");
                        inputBuffer1.nextLine();
                    }
                }

//                 ********************************************** Admin ********************************************
                else if (userChoice == 2) {
                    System.out.println("I have Select Admin Menu");
                    System.out.println("Please Enter your Valid PIN");
                    if (inputBuffer1.hasNextInt()) {
                        int adminPIN = Integer.parseInt(inputBuffer1.nextLine());
                        if (adminPIN == 1122) {
                            boolean adminRunning = true;
                            while (adminRunning) {
                                //System.out.println("Your PIN is Correct !");
                                System.out.println("The Available Options are: ");
                                System.out.println("[1] View All Complaints\n[2] Search Complaint by ID\n[3] Close a Complaint\n" +
                                        "[4] Assign Complaints to support staff members\n[5] Back to the main menu ");
                                System.out.print("Please Enter a number: ");
                                if (inputBuffer1.hasNextInt()) {
                                    int adminChoice = inputBuffer1.nextInt();
                                    if (adminChoice == 1) {
                                        if (cutomerID.isEmpty()) {
                                            System.out.println("There is no complaint to be viewed !");
                                        } else {
                                            for (int i = 0; i < cutomerID.size(); i++) {
                                                System.out.printf("Customer ID: %s\n", cutomerID.get(i));
                                                System.out.printf("Customer Description: %s\n", cutomerDescription.get(i));
                                                System.out.printf("Customer priorities: %s\n", cutomerPriority.get(i));
                                                if (assignment.get(i).equals("Not-Assigned")) {
                                                    System.out.println("This Complaint is Not Assigned");
                                                    System.out.println("========================================");
                                                } else {
                                                    System.out.printf("This Complaint is Assigned To: %s", assignment.get(i));
                                                    System.out.println("========================================");
                                                }
                                            }
                                        }
                                    } else if (adminChoice == 2) {
                                        System.out.println("Please Enter the ID: ");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index != -1) {
                                                System.out.println("The Customer ID is: " + cutomerID.get(index));
                                                System.out.println("The Description is: " + cutomerDescription.get(index));
                                                System.out.println("The Priority is: " + cutomerPriority.get(index));

                                            } else {
                                                System.out.println("The Complaint not found!!!!!");
                                            }
                                        } else {    // If the admin enter anything except integer
                                            System.out.println("Invalid Choice !");
                                            inputBuffer1.nextLine();
                                        }
                                    } else if (adminChoice == 3) {
                                        System.out.println("Please Enter the Complaint ID that you want to Close : ");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index != -1) {
                                                if (complaintStatus.get(index).equals("CLOSED")) {  // CHECK IF IT'S ASSIGNED
                                                    System.out.println("Complaint already CLOSED!");
                                                } else {
                                                    complaintStatus.set(index, "CLOSED");      // ASSIGN IT IF IT'S NOT
                                                    System.out.println("Complaint successfully CLOSED.");
                                                }
                                            }
                                        } else {    // If the admin enter anything except complaint ID
                                            System.out.println("Invalid Choice !");
                                            inputBuffer1.nextLine();
                                        }
                                    } else if (adminChoice == 4) {
                                        System.out.println("Please Enter The Complaint ID That You Want To Assign: ");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index != -1) {
                                                if (complaintStatus.get(index).equals("Closed")) {
                                                    System.out.println("Cannot Assign. Complaint is Already CLOSED!");
                                                } else {
                                                    System.out.print("Please Enter The Staff Name: ");
                                                    String staffName = inputBuffer1.nextLine();
                                                    assignment.set(index, staffName);  // Assign to staff member
                                                    complaintStatus.set(index, "Assigned"); // changing the status to assigned
                                                    System.out.println("Complaint successfully ASSIGNED to " + staffName);
                                                }
                                            }
                                        }
                                    } else if (adminChoice == 5) {
                                        System.out.println("Exiting The Main Menu...");
                                        adminRunning = false;
                                    } else {
                                        System.out.println("Invalid Choice!!!!");
                                    }
                                } else {    // If the user enter anything except integer in the Admin Choice
                                    System.out.println("Invalid Choice !");
                                    inputBuffer1.nextLine();
                                }
                            }
                        } else {
                            System.out.println("Your PIN is inCorrect !");
                        }
                    } else {    // If the user enter anything except integer in the PIN
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
            } else {    // If the user enter anything except integer in the Main Menu
                System.out.println("Invalid Choice !");
                inputBuffer1.nextLine();
            }
            System.out.println();
        }
    }
}



