package org.example.fromalharithalkindi.s2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class CliProgram {

    static Scanner input = new Scanner(System.in);


    static int readInt(String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = input.nextLine().trim();
            try {
                return Integer.parseInt(line);
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a number only.");
            }
        }
    }

    public static void main(String[] args) {

        //=====================1) CLI ERP – Project Setup & Main Menu ============

        ArrayList<Integer> userId = new ArrayList<Integer>();
        ArrayList<String> userDes = new ArrayList<String>();
        ArrayList<String> levl = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<>();
        String[] level = {" Low ", " Medium ", " High"};

        HashMap<Integer, String> assignmentMap = new HashMap<>();
        HashMap<Integer, ArrayList<String>> commentsMap = new HashMap<>();

        boolean menuRun = true;

        //================= Main Menu ==========================================================
        while (menuRun) {

            System.out.println("\n \n1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit\n \n ");
            int mainMenuChoice = readInt("enter number: ");

            //================= Customer ==========================================================
            if (mainMenuChoice == 1) {

                System.out.println("========== customer Page ==========");
                System.out.println("1.creat complain ");
                System.out.println("2.exit to main menu ");
                int userMenuChoice = readInt("choose: ");

                if (userMenuChoice == 1) {
                    System.out.println("\n");
                    int comId = readInt("Enter complain ID: ");
                    userId.add(comId);

                    System.out.print("Enter complaint: ");
                    String comDes = input.nextLine();
                    userDes.add(comDes);

                    System.out.println("your complaint by defult set to medium if you want to change? " +
                            "\n enter 1 for yes" +
                            "\n enter 2 for no");
                    int priorityChoice = readInt("choose: ");
                    complainStatus.add("open");

                    if (priorityChoice == 1) {
                        System.out.println("[1] Low \t [2] Medium \t [3] High");
                        int prLev = readInt("Set priority to your Complaint: ");
                        if (prLev == 1) {
                            levl.add(level[0]);
                        } else if (prLev == 2) {
                            levl.add(level[1]);
                        } else if (prLev == 3) {
                            levl.add(level[2]);
                        } else {
                            System.out.println("Only press 1 or 2 or 3");
                        }
                    } else if (priorityChoice == 2) {
                        levl.add(level[1]);
                    } else {
                        System.out.println("Only press 1 or 2");
                    }

                } else if (userMenuChoice == 2) {
                    // exit to main menu
                }
            }

            //================= Admin ==========================================================
            else if (mainMenuChoice == 2) {
                System.out.println("========== Admin Page ==========");

                int adminPin = 1212;
                int pin = readInt("enter your admin Pin: ");

                if (pin == adminPin) {
                    System.out.println("Login successful :)  ");

                    System.out.println("=================================");
                    System.out.println("1.View all complaints.\n" +
                            "2.Search complaint by ID.\n" +
                            "3.Close a complaint.\n" +
                            "4.Exit to Main Menu\n" +
                            "5.Assign complaint to Support Staff.\n" +
                            "6.View all assignments.\n");
                    int adminChoice = readInt("choose number: ");

                    if (adminChoice == 1) {
                        System.out.println("complaint ID: " + userId);
                        System.out.println("User complaint: " + userDes);
                        System.out.println("Complaint priority : " + levl);
                        System.out.println("Complaint status : " + complainStatus);

                    } else if (adminChoice == 2) {
                        int search = readInt("write ID Number: ");
                        int searchIndex = userId.indexOf(search);
                        if (searchIndex != -1) {
                            System.out.printf("Ticket #[%s] Details\n: ", userId.get(searchIndex));
                            System.out.println("description:" + userDes.get(searchIndex));
                            System.out.println("Priority: " + levl.get(searchIndex));
                            System.out.println("Status: " + complainStatus.get(searchIndex));

                            if (assignmentMap.containsKey(search)) {
                                System.out.println("Assigned to: " + assignmentMap.get(search));
                            } else {
                                System.out.println("Assigned to: Not assigned yet");
                            }

                            if (commentsMap.containsKey(search) && !commentsMap.get(search).isEmpty()) {
                                System.out.println("--- Comments ---");
                                ArrayList<String> cList = commentsMap.get(search);
                                for (int i = 0; i < cList.size(); i++) {
                                    System.out.println("  [" + (i + 1) + "] " + cList.get(i));
                                }
                            }

                        } else {
                            System.out.println("ComplainID Is Mismatching or Incorrect, please try again\n........");
                        }

                    } else if (adminChoice == 3) {
                        System.out.println("========== Closing complain");
                        int closingComplain = readInt("Enter the complain Id: ");
                        int searchComplainIndex = userId.indexOf(closingComplain);

                        if (searchComplainIndex < 0 || searchComplainIndex >= userId.size()) {
                            System.out.println("Try again");
                        } else {
                            System.out.println("Closing complain *******");
                            complainStatus.set(searchComplainIndex, "Closed");
                            System.out.printf("Sucessfully!\nclosed the complain: #[%s]\ncomplain status changed to >>>>>>>>>> %s\n",
                                    userId.get(searchComplainIndex),
                                    complainStatus.get(searchComplainIndex));
                        }

                    } else if (adminChoice == 4) {


                    } else if (adminChoice == 5) {
                        System.out.println("========== Assign Complaint to Support Staff ==========");
                        int assignId = readInt("Enter the Complaint ID to assign: ");
                        int assignIndex = userId.indexOf(assignId);

                        if (assignIndex == -1) {
                            System.out.println("Error: Complaint ID #" + assignId + " does not exist.");
                        } else if (complainStatus.get(assignIndex).equalsIgnoreCase("Closed")) {
                            System.out.println("Error: Cannot assign a closed complaint.");
                        } else {
                            System.out.print("Enter Support Staff Name: ");
                            String staffName = input.nextLine();
                            assignmentMap.put(assignId, staffName);
                            System.out.println("=================================");
                            System.out.printf("Successfully assigned!\n" +
                                            "Complaint #[%d] has been assigned to >> %s <<\n",
                                    assignId, staffName);
                        }

                    } else if (adminChoice == 6) {
                        System.out.println("========== Complaint Assignments ==========");
                        if (assignmentMap.isEmpty()) {
                            System.out.println("No complaints have been assigned yet.");
                        } else {
                            System.out.printf("%-15s %-20s %-10s%n", "Complaint ID", "Assigned To", "Status");
                            System.out.println("---------------------------------------------------");
                            for (int id : assignmentMap.keySet()) {
                                int idx = userId.indexOf(id);
                                String status = (idx != -1) ? complainStatus.get(idx) : "Unknown";
                                System.out.printf("%-15d %-20s %-10s%n", id, assignmentMap.get(id), status);
                            }
                        }
                        System.out.println("===========================================");
                    }

                } else {
                    System.out.println("Password is Not Correct :/  ");
                }
            }

            //================= Support Staff ==========================================================
            else if (mainMenuChoice == 3) {
                System.out.println("========== Support Staff Page ==========");

                System.out.print("Enter your staff name: ");
                String staffName = input.nextLine().trim();

                ArrayList<Integer> myComplaints = new ArrayList<>();
                for (int id : assignmentMap.keySet()) {
                    if (assignmentMap.get(id).equalsIgnoreCase(staffName)) {
                        myComplaints.add(id);
                    }
                }

                if (myComplaints.isEmpty()) {
                    System.out.println("No complaints are currently assigned to: " + staffName);
                } else {
                    System.out.println("Welcome, " + staffName + "!");
                    System.out.println("You have " + myComplaints.size() + " assigned complaint(s).");

                    System.out.println("\n1. View my assigned complaints");
                    System.out.println("2. Add a comment to a complaint");
                    System.out.println("3. Close a complaint");
                    System.out.println("4. Exit to Main Menu");
                    int staffChoice = readInt("choose number: ");

                    if (staffChoice == 1) {
                        System.out.println("\n========== Your Assigned Complaints ==========");
                        System.out.printf("%-12s %-30s %-10s %-12s%n",
                                "ID", "Description", "Priority", "Status");
                        System.out.println("---------------------------------------------------------------");

                        for (int id : myComplaints) {
                            int idx = userId.indexOf(id);
                            String desc = userDes.get(idx);
                            String priority = levl.get(idx);
                            String status = complainStatus.get(idx);

                            if (desc.length() > 28) {
                                desc = desc.substring(0, 25) + "...";
                            }

                            System.out.printf("%-12d %-30s %-10s %-12s%n",
                                    id, desc, priority.trim(), status);

                            if (commentsMap.containsKey(id) && !commentsMap.get(id).isEmpty()) {
                                ArrayList<String> cList = commentsMap.get(id);
                                for (int i = 0; i < cList.size(); i++) {
                                    System.out.println("    Comment [" + (i + 1) + "]: " + cList.get(i));
                                }
                            }
                        }
                        System.out.println("===============================================================");

                    } else if (staffChoice == 2) {
                        System.out.println("========== Add Comment ==========");
                        int commentId = readInt("Enter Complaint ID to comment on: ");

                        if (!myComplaints.contains(commentId)) {
                            System.out.println("Error: Complaint #" + commentId +
                                    " is not assigned to you.");
                        } else {
                            int idx = userId.indexOf(commentId);
                            if (complainStatus.get(idx).equalsIgnoreCase("Closed")) {
                                System.out.println("Error: Cannot add a comment to a closed complaint.");
                            } else {
                                System.out.print("Enter your comment: ");
                                String comment = input.nextLine();

                                if (!commentsMap.containsKey(commentId)) {
                                    commentsMap.put(commentId, new ArrayList<>());
                                }

                                commentsMap.get(commentId).add("[" + staffName + "]: " + comment);
                                System.out.println("Comment added successfully to Complaint #" + commentId);
                            }
                        }

                    } else if (staffChoice == 3) {
                        System.out.println("========== Close Complaint ==========");
                        int closeId = readInt("Enter Complaint ID to close: ");

                        if (!myComplaints.contains(closeId)) {
                            System.out.println("Error: Complaint #" + closeId +
                                    " is not assigned to you.");
                        } else {
                            int idx = userId.indexOf(closeId);
                            if (complainStatus.get(idx).equalsIgnoreCase("Closed")) {
                                System.out.println("Error: Complaint #" + closeId +
                                        " is already closed.");
                            } else {
                                complainStatus.set(idx, "Closed");
                                System.out.printf("Successfully closed Complaint #[%d]\n" +
                                        "Status changed to >>>>>>>>>> Closed\n", closeId);
                            }
                        }

                    } else if (staffChoice == 4) {

                    } else {
                        System.out.println("enter valid number please !!!!");
                    }
                }
            }

            //================= Exit ==========================================================
            else if (mainMenuChoice == 4) {
                System.out.println("exit ");
                menuRun = false;
            }

            //================= Else ==========================================================
            else {
                System.out.println("enter valid number please !!!!");
            }
        }
    }
}