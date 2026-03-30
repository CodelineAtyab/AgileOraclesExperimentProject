package org.example.fromalharithalkindi;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        //=====================1) CLI ERP – Project Setup & Main Menu ============

        Scanner input = new Scanner(System.in);
        //===============================================
        ArrayList<Integer> userId = new ArrayList<Integer>();
        ArrayList<String> userDes = new ArrayList<String>();
        ArrayList<String> levl = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<>();
        String[] level = {" Low ", " Medium ", " High"};

        //===============================================
        boolean userRun = true;
        boolean menuRun = true;


        //================= Main Menu==========================================================


        while (menuRun) {

            System.out.println("\n \n1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit\n \n ");
            System.out.print("enter number:");
            int mainMenuChoice = Integer.parseInt(input.nextLine());


            //================= Customer==========================================================
            if (mainMenuChoice == 1) {

                System.out.println("========== customer Page ==========");
                // while (userMenuRun)

                System.out.println("1.creat complain ");
                System.out.println("2.exit to main menu ");
                int userMenuChoice=Integer.parseInt(input.nextLine());

                if(userMenuChoice==1)
                {
                    System.out.println("\n");
                    System.out.print("Enter complain ID:");
                    int comId = Integer.parseInt(input.nextLine());
                    userId.add(comId);

                    System.out.print("Enter complaint:");
                    String comDes = input.nextLine();
                    userDes.add(comDes);


                    System.out.println("your complaint by defult set to medium if you want to change? " +
                            "\n enter 1 for yes" +
                            "\n enter 2 for no");
                    int priorityChoice = Integer.parseInt(input.nextLine());
                    complainStatus.add("open");

                    if (priorityChoice == 1) {
                        System.out.println("[1] Low \t [2] Medium \t [3] High");
                        System.out.print("Set priority to your Complaint:");
                        int prLev = Integer.parseInt(input.nextLine());
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
                }

                else if (userMenuChoice==2)
                {


                }

            }


            //================= Admin==========================================================
            else if (mainMenuChoice == 2) {
                System.out.println("========== Admin Page ==========");


                int adminPin = 1212;
                boolean adminRun = true;


                System.out.println("enter your admin Pin:");
                int pin = Integer.parseInt(input.nextLine());
                //while (adminRun) {


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
                            System.out.println("Enter the complain Id: ");
                            int closingComplain = Integer.parseInt(input.nextLine());

                            int searchComplainIndex = userId.indexOf(closingComplain);

                            if (searchComplainIndex >= userId.size() || searchComplainIndex < 0) {

                                System.out.println("Try again");
                            } else {

                                System.out.println("Closing complain *******");
                                //changing the status from open to close
                                complainStatus.set(searchComplainIndex, "Closed");
                                System.out.printf("Sucessfully!\nclosed the complain: #[%s]\ncomplain status changed to >>>>>>>>>> %s\n", userId.get(searchComplainIndex), complainStatus.get(searchComplainIndex));

                            }
                        } else if (adminChoice == 4) {
                            adminRun=false;

                        }


                    } else if (pin != adminPin) {
                        System.out.println("Password is Not Correct :/  ");
                    }

                //}
            }

            //================= Support ==========================================================
            else if (mainMenuChoice == 3) {
                System.out.println("========== Support Page ========== ");




            }

            //================= Exit ==========================================================
            else if (mainMenuChoice == 4) {
                System.out.println("exit ");
                menuRun = false;
            }

            //================= Else==========================================================
            else {
                System.out.println("enter valid number please !!!!");
            }
        }
    }
}