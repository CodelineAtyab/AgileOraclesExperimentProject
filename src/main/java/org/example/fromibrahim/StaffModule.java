package org.example.fromibrahim;

import java.util.ArrayList;
import java.util.Scanner;

public class StaffModule {
    public static void main(String[] args) {

        Scanner inputBuffer1 = new Scanner(System.in);
        ArrayList<Integer> cutomerID = new ArrayList<>();
        ArrayList<String> cutomerDescription = new ArrayList<>();
        ArrayList<String> cutomerPriority = new ArrayList<>();
        ArrayList<String> complaintStatus = new ArrayList<>();
        ArrayList<String> assignment = new ArrayList<>();
        ArrayList<String> staffComment = new ArrayList<>();

        String[] ticketPriority = {"Low", "Medium", "High"};
        boolean mainMenuRunning = true;

        while (mainMenuRunning) {
            System.out.println("Welcome to the main menu!");
            System.out.println("The available options are:\n[1] Customer\n[2] Admin\n[3] Support Stuff\n[4] Exit");
            System.out.print("Please enter the number: ");

//       ********************************************* Customer *******************************************************
            // Checking if Menu input is integer
            if (inputBuffer1.hasNextInt()) {
                int userChoice = inputBuffer1.nextInt();
                inputBuffer1.nextLine();
                if (userChoice == 1) {
                    System.out.println("\nI Have Selected Customer Menu\n");

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
                                System.out.println("Returning to the Main Menu...\n");
                                priorityRunning = false;
                                continue; // Not saving the ticket
                            } else if (priorityChoice.isEmpty()) {
                                inputPriority = ticketPriority[1];
                            } else {
                                System.out.println("Please Enter the Word: Low or Medium or High or Return !!!!\n");
                                continue; // Not saving the ticket
                            }
                            cutomerID.add(inputID);
                            cutomerDescription.add(inputDescription);
                            cutomerPriority.add(inputPriority);
                            complaintStatus.add("Open");
                            assignment.add("Not-Assigned");
                            staffComment.add("");

                            System.out.println("\nThe Complaint Successfully Created!\n");
                            priorityRunning = false;
                        }
                    } else {   // If the user enter anything except integer in the Compliant ID
                        System.out.println("Invalid Choice !\n");
                        inputBuffer1.nextLine();
                    }
                }

//                 ********************************************** Admin ********************************************
                else if (userChoice == 2) {
                    System.out.println("\nI Have Selected Admin Menu!");
                    System.out.print("Please Enter your Valid PIN: ");
                    if (inputBuffer1.hasNextInt()) {
                        int adminPIN = Integer.parseInt(inputBuffer1.nextLine());
                        if (adminPIN == 1122) {
                            boolean adminRunning = true;
                            while (adminRunning) {
                                //System.out.println("Your PIN is Correct !");
                                System.out.println("\nThe Available Options are: ");
                                System.out.println("[1] View All Complaints\n[2] Search Complaint by ID\n[3] Close a Complaint\n" +
                                        "[4] Assign Complaints to support staff members\n[5] Back to the main menu ");
                                System.out.print("Please Enter a number: ");
                                if (inputBuffer1.hasNextInt()) {
                                    int adminChoice = inputBuffer1.nextInt();
                                    if (adminChoice == 1) {
                                        if (cutomerID.isEmpty()) {
                                            System.out.println("There is no complaint to be viewed !\n");
                                        } else {
                                            for (int i = 0; i < cutomerID.size(); i++) {
                                                System.out.printf("\nCustomer ID: %s\n", cutomerID.get(i));
                                                System.out.printf("Customer Description: %s\n", cutomerDescription.get(i));
                                                System.out.printf("Customer priorities: %s\n", cutomerPriority.get(i));
                                                System.out.printf("Complaint Status: %s\n", complaintStatus.get(i));
                                                if (assignment.get(i).equals("Not-Assigned")) {
                                                    System.out.println("This Complaint is Not Assigned");
                                                    System.out.println("========================================\n");
                                                } else {
                                                    System.out.printf("This Complaint is Assigned To: %s\n", assignment.get(i));
                                                    System.out.println("========================================\n");
                                                }
                                            }
                                        }
                                    } else if (adminChoice == 2) {
                                        System.out.print("Please Enter the ID: \n");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index != -1) {
                                                System.out.printf("The Customer ID is: %s\n", cutomerID.get(index));
                                                System.out.printf("The Description is: %s\n", cutomerDescription.get(index));
                                                System.out.printf("The Priority is: %s\n", cutomerPriority.get(index));
                                                System.out.printf("Complaint Status: %s\n", complaintStatus.get(index));

                                            } else {
                                                System.out.println("The Complaint not found!!!!!\n");
                                            }
                                        } else {    // If the admin enter anything except integer
                                            System.out.println("Invalid Choice !\n");
                                            inputBuffer1.nextLine();
                                        }
                                    } else if (adminChoice == 3) {
                                        System.out.print("Please Enter the Complaint ID that you want to Close: \n");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index != -1) {
                                                if (complaintStatus.get(index).equals("Closed")) {  // CHECK IF IT'S ASSIGNED
                                                    System.out.println("Complaint already Closed!\n");
                                                } else {
                                                    complaintStatus.set(index, "Closed");      // ASSIGN IT IF IT'S NOT
                                                    System.out.println("Complaint successfully Closed!\n");
                                                }
                                            }
                                        } else {    // If the admin enter anything except complaint ID
                                            System.out.println("Invalid Choice !\n");
                                            inputBuffer1.nextLine();
                                        }
                                    } else if (adminChoice == 4) {
                                        System.out.print("\nPlease Enter The Complaint ID That You Want To Assign: \n");
                                        if (inputBuffer1.hasNextInt()) {
                                            int searchID = inputBuffer1.nextInt();
                                            int index = cutomerID.indexOf(searchID);
                                            if (index == -1) {
                                                // Complaint not found
                                                System.out.println("Complaint Not Found!\n");
                                            } // Already Closed
                                            else if (complaintStatus.get(index).equalsIgnoreCase("Closed")) {
                                                System.out.println("Cannot Assign. Complaint is Already Closed!\n");
                                            }   // Already assigned
                                            else if (!assignment.get(index).equalsIgnoreCase("Not-Assigned")) {
                                                System.out.println("This Complaint Is Already Assigned To " + assignment.get(index) + "\n");
                                            }   // Assigning
                                            else {
                                                inputBuffer1.nextLine(); // clear buffer
                                                System.out.print("Please Enter The Staff Name: \n");
                                                String staffName = inputBuffer1.nextLine();
                                                assignment.set(index, staffName);
                                                complaintStatus.set(index, "Open");
                                                System.out.printf("Complaint successfully ASSIGNED to %s !\n", staffName);
                                            }
                                        } else {    // If the user enter anything except integer in the Admin Choice
                                            System.out.println("Invalid Choice !\n");
                                            inputBuffer1.nextLine();
                                        }
                                    } else if (adminChoice == 5) {
                                        System.out.println("Exiting The Main Menu...\n");
                                        adminRunning = false;
                                    } else {
                                        System.out.println("Invalid Choice!!!!\n");
                                    }
                                } else {    // If the user enter anything except integer in the Admin Choice
                                    System.out.println("Invalid Choice !\n");
                                    inputBuffer1.nextLine();
                                }
                            }
                        } else {
                            System.out.println("Your PIN is inCorrect !\n");
                        }
                    } else {    // If the user enter anything except integer in the PIN
                        System.out.println("Invalid Choice !\n");
                        inputBuffer1.nextLine();
                    }

// ******************************************** Support Staff ************************************************
                } else if (userChoice == 3) {
                    System.out.println("\nI Have Selected Support Stuff Menu!");
                    System.out.print("Please Enter Your Name: ");
                    String inputStaffName = inputBuffer1.nextLine().toLowerCase();

                    if (inputStaffName.isEmpty()){
                        System.out.println("Invalid Input!!!\n");
                        continue;
                    }
                    boolean staffRunning = true;
                    while (staffRunning) {
                        System.out.println("\nThe Available Options are: ");
                        System.out.println("[1] View Assigned Complaints\n[2] Close Assigned Complaints\n[3] Back To The Main Menu  ");
                        System.out.print("Please Enter The Number Of The Option: ");

                        if (inputBuffer1.hasNextInt()) {
                            int staffInput = inputBuffer1.nextInt();
                            inputBuffer1.nextLine();   // Clearing the buffer after nextInt()
                            if (staffInput == 1) {
                                boolean found = false;
                                for (int i = 0; i < cutomerID.size(); i++) {
                                    if (assignment.get(i).equalsIgnoreCase(inputStaffName)) {
                                        found = true;
                                        System.out.printf("\nCustomer ID: %s\n", cutomerID.get(i));
                                        System.out.printf("Customer Description: %s\n", cutomerDescription.get(i));
                                        System.out.printf("Customer priorities: %s\n", cutomerPriority.get(i));
                                        System.out.printf("Complaint Status: %s\n", complaintStatus.get(i));

                                    }
                                } if (!found) {
                                    System.out.println("Nothing Assigned To You!\n");
                                }
                            } else if (staffInput == 2) {
                                System.out.print("Please Enter The Complaint ID That You Want To Close: \n");
                                if (inputBuffer1.hasNextInt()) {
                                    int closeID = inputBuffer1.nextInt();
                                    inputBuffer1.nextLine();
                                    int index = cutomerID.indexOf(closeID);

                                    if (index == -1) {
                                        System.out.println("Failed To Find The Complaint!!!\n");
                                        // Not Assigned To Staff
                                    } else if (!assignment.get(index).equalsIgnoreCase(inputStaffName)) {
                                        System.out.println("You Cant Close It As It Is Not Assigned To You\n");
                                    }
                                    // Already Closed
                                    else if (complaintStatus.get(index).equalsIgnoreCase("Closed")) {
                                        System.out.println("This Complaint Is Already Closed!!! Can Not Be Modified\n");
                                    }
                                    // Closing The Complaints
                                    else {
                                        complaintStatus.set(index, "Closed");
                                        System.out.println("\nThe Complaint Is Successfully Closed!\n");

                                        System.out.println("Please, If You Want To Add A Comment Reply: Y");
                                        System.out.println("Please, If You Don't Want To Add A Comment Reply: N");
                                        String staffAcceptComment = inputBuffer1.nextLine().trim();

                                        if (staffAcceptComment.equalsIgnoreCase("Y")) {
                                            System.out.println("Please Enter Your Comment: ");
                                            String staffAddingComment = inputBuffer1.nextLine();

                                            if (!staffAddingComment.isEmpty()) {
                                                staffComment.set(index, staffAddingComment);
                                                System.out.println("Comment Saved Successfully !\n");
                                            } else {
                                                System.out.println("No Comment Have Been Added\n");
                                            }
                                        } else if (staffAcceptComment.equalsIgnoreCase("N")) {
                                            System.out.println("No Comment Added!\n");
                                        } else {
                                            System.out.println("Invalid Input! Please Enter Y or N!!!!\n");
                                        }
                                    }
                                } else {
                                    System.out.println("Invalid ID !!!!\n");
                                    inputBuffer1.nextLine();
                                }
                            } else if (staffInput == 3){
                                staffRunning = false;
                            } else {
                                System.out.println("Invalid Choice !!!!!\n");
                            }
                        } else {    // If the staff enter anything except integer
                            System.out.println("Invalid Choice !\n");
                            inputBuffer1.nextLine();
                        }
                    }

                } else if (userChoice == 4) {
                    System.out.println("Exiting the Program ... \n");
                    mainMenuRunning = false;
                } else {
                    System.out.print("Please Enter a Number From 1 to 4 !!!!\n");
                }
            } else {    // If the user enter anything except integer in the Main Menu
                System.out.println("Invalid Choice !\n");
                inputBuffer1.nextLine();
            }
            System.out.println();
        }
    }
}