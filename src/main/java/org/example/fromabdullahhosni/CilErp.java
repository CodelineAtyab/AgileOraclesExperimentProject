package org.example.fromabdullahhosni;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class CilErp {
    public static void main(String[] args) {
//  Implemeting a scanner
        Scanner scannerBuffer = new Scanner(System.in);

//Input Storing
        ArrayList<Integer> complains = new ArrayList<Integer>();
        ArrayList<String> descriptions = new ArrayList<String>();
        ArrayList<String> complainsProiorty = new ArrayList<String>();
        HashMap<Integer, String> complainStatus = new HashMap<>();
        //hash map
        HashMap<Integer, String> staffComplains = new HashMap<>();
        //task 5
        ArrayList<String> staff = new ArrayList<>();
        ArrayList<Integer> complainAssined = new ArrayList<>();
        ArrayList<String> comment = new ArrayList<>();

        String[] proiorty = {"Low", "Medium", "High"};
//  Looping Menu
        boolean menuIsRunning = true;
        while (menuIsRunning == true) {
//  Menu
            System.out.println("============ Wellcome - Main Menu =============");
            System.out.println("Please choose an option");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("*==================================*      ");


//  menu Options
//==========================================================================================================
            //handling Crash program
            if (scannerBuffer.hasNextInt()) {
                int IndexOption = Integer.parseInt(scannerBuffer.nextLine());


                if (IndexOption == 1) {
                    System.out.println("Customer module");
                    System.out.println("Enter an option :\n1: create a Complain\n2: Exit to main menu");


                    //handling Crash program
                    if (scannerBuffer.hasNextInt()) {
                        int customerIndex = Integer.parseInt(scannerBuffer.nextLine());


                        if (customerIndex == 1) {
                            System.out.println("Enter the complain ID..>");


                            //handling Crash program
                            if (scannerBuffer.hasNextInt()) {
                                //taking Input
                                int complainIndex = Integer.parseInt(scannerBuffer.nextLine());
                                System.out.println("Enter the complain Description..>");
                                String complainDescription = scannerBuffer.nextLine();

                                //error handling
                                if (complainDescription.isEmpty() || complainIndex == 0) {
                                    System.out.println("please fill all options, try again!");
                                } else {
                                    //processing - Adding complains
                                    complains.add(complainIndex);
                                    descriptions.add(complainDescription);
                                    complainsProiorty.add(proiorty[1]);
                                    //adding complain status
                                    complainStatus.put(complainIndex, "Open");
                                    System.out.println("Successfully added");

                                    //Displaying complains
                                    int currentComplain = complains.indexOf(complainIndex);
                                    System.out.printf("Complain ID: #[%s]\n", complains.get(currentComplain));
                                    System.out.printf("Description: %s\n", descriptions.get(currentComplain));

                                    //changeing proiorty
                                    System.out.println("proiorty : Set to [Medium]Default , do you wat to change it (Y/n)?");
                                    String changeProiorty = scannerBuffer.nextLine();

                                    if (changeProiorty.equals("y") || changeProiorty.equals("Y") || changeProiorty.equals("yes") || changeProiorty.equals("YES")) {
                                        System.out.printf("ComplainID\t\t %s\n", complains.get(currentComplain));
                                        System.out.printf("Current status : [%s]\n", complainsProiorty.get(currentComplain));
                                        //removing old one
                                        complainsProiorty.remove(currentComplain);

                                        System.out.print("choose the new status \"Low\" \"High\" \"Medium\" .....>\t");
                                        String chooseProiorty = scannerBuffer.nextLine();

                                        //choosing priorty
                                        if (chooseProiorty.equals("low") || chooseProiorty.equals("LOW")) {
                                            complainsProiorty.add(proiorty[0]);
                                        } else if (chooseProiorty.equals("High") || chooseProiorty.equals("HIGH")) {
                                            complainsProiorty.add(proiorty[2]);
                                        } else if (chooseProiorty.equals("medium") || chooseProiorty.equals("Medium")) {
                                            complainsProiorty.add(proiorty[1]);
                                        } else {
                                            System.out.println("Something Went Wrong, please choose the right option or try again!");
                                        }
                                        System.out.println("Successfully ");
                                    } else {
                                        System.out.println("try again, please these options  y/yes : n/no\n");
                                    }
                                }
                            }
                        }
                    }

                    //error handling
                    else {
                        System.out.println(" Try again ,\n please input vaild option ex: 1,2,...,4");
                        System.out.println("Going back to Main Menu");

                    }
                }
//==========================================================================================================
                else if (IndexOption == 2) {
                    //!!!!!!!!
                    // Top Secret- Please Keep this Safe
                    //++++++++++++++++++++++
                    int adminPIN = 12345678;
                    //++++++++++++++++++++++
                    System.out.println("========= Admin Login ");
                    System.out.println("Please Enter the Admin Pin to Login");

                    //handling Crash program
                    if (scannerBuffer.hasNextInt()) {
                        int adminPinIndex = Integer.parseInt(scannerBuffer.nextLine());

                        if (adminPinIndex != adminPIN) {

                            System.out.println("Invaid Pin\t\t\t No Access Granted! try Again");
                        }
                        else {

                            System.out.println("Admin User Granted\n\n\nEnter an option :\n1: View All Complains\n2: Search a complaint by ID\n3: close a complaint\n4: Assign complain to a Staff member \n5: Exit to main menu");

                            //handling Crash program
                            if (scannerBuffer.hasNextInt()) {
                                int adminMenuOption = Integer.parseInt(scannerBuffer.nextLine());

                                //Admin option 1
                                if (adminMenuOption == 1) {

                                    System.out.println("======== Report Of All Complains =========\n ");

                                    //Printing ALL Complains Tickets
                                    for (int allComplains = 0; allComplains < complains.size(); allComplains++) {

                                        System.out.printf("# --- Id[%d]\tDescription[%s]\tProiorty[%s]\n", complains.get(allComplains)
                                                , descriptions.get(allComplains), complainsProiorty.get(allComplains));
                                    }
                                }

                                //Admin option 2
                                else if (adminMenuOption == 2) {

                                    System.out.println("Complain Search --\t\tEnter ComplainID example[Complain ID:6685] ..>");

                                    //handling Crash program
                                    if (scannerBuffer.hasNextInt()) {
                                        int searchComplain = Integer.parseInt(scannerBuffer.nextLine());
                                        int searchComplainIndex = complains.indexOf(searchComplain);

                                        if (searchComplainIndex != -1) {

                                            System.out.printf("Ticket #[%s] Details\n: ", searchComplain);
                                            System.out.println("description:" + descriptions.get(searchComplainIndex));
                                            System.out.println("Proiorty: " + complainsProiorty.get(searchComplainIndex));
                                        }
                                    }

                                    else {

                                        System.out.println("ComplainID Is Missmatching or Incorrect, please try again\n........");
                                    }
                                }


                                //Admin option 3
                                else if (adminMenuOption == 3) {

                                    System.out.println("========== Closing complain");
                                    System.out.println("Enter the complain Id Example[ComplainID: 8868]");

                                    //handling Crash program
                                    if (scannerBuffer.hasNextInt()) {
                                    int closingComplain = Integer.parseInt(scannerBuffer.nextLine());

                                    int searchComplainIndex = complains.indexOf(closingComplain);

                                    if (searchComplainIndex >= complains.size() || searchComplainIndex < 0) {

                                        System.out.println("Try again");
                                    } else {

                                        System.out.println("Closing complain *******");
                                        //changing the status from open to close
                                        complainStatus.replace(closingComplain, "Closed");
                                        System.out.printf("Sucessfully!\nclosed the complain: #[%s]\ncomplain status changed to >>>>>>>>>> %s\n", complains.get(searchComplainIndex), complainStatus.get(searchComplainIndex));
                                        }
                                    }

                                    else {

                                        System.out.println("Try again, please enter Valid input example : 1,2,3,...,5");
                                    }
                                }


                                //extending
                                //Admin option 4
                                else if (adminMenuOption == 4) {
                                    System.out.println("Staff assigning ---------");
                                    System.out.print("1: Assign staff to a complain\n2: View all assignment\n");

                                    //handling Crash program
                                    if (scannerBuffer.hasNextInt()) {

                                        int staffAdminMenu = Integer.parseInt(scannerBuffer.nextLine());

                                        if (staffAdminMenu == 1) {
                                            System.out.println("enter the complain Id example[Complain Id: 8868] .....>> ");
                                            int complainid = Integer.parseInt(scannerBuffer.nextLine());
                                            //error handling if the user enters the wronge id
                                            if (complainid >= complains.size() || complainid < 0) {
//                                System.out.println("try again");
                                                //get a particular report
                                                int getIndex = complains.indexOf(complainid);
                                                int staffIndexValue = complains.get(getIndex);
                                                //checking for Non-existing complaints or Closed complaints .
                                                if (complainid != staffIndexValue && complainStatus.equals("Closed") || complainid == staffIndexValue && complainStatus.equals("Closed")) {
                                                    System.out.println("Try Again, this complain ID maybe closed or Non existing");
                                                } else {
                                                    System.out.printf("Ticket ID[%s]\n", complainid);
                                                    System.out.println("enter the staff person you want to assign to .....>> ");
                                                    String staffAssign = scannerBuffer.nextLine();

                                                    staff.add(staffAssign);
                                                    complainAssined.add(complainid);
                                                    comment.add("No-comment");
                                                    System.out.printf("======sucessfully\nassigned staff:[%s] ---- to complain #[%s]\ngood luck to him\n", staffAssign, complainid);
                                                }
                                            }

                                            else {
                                                System.out.println("try again");

                                            }
                                        }
                                        else if (staffAdminMenu == 2) {
                                            System.out.println("===== staff complains =====");
                                            System.out.println(staffComplains);

                                        }
                                    }
                                    else {

                                        System.out.println("Try again, please enter Valid input example : 1,2,3,...,5");

                                    }
                                }
                                //Admin option 5 - exit to main menu
                                else if (adminMenuOption == 5) {

                                }
                            }

                            //Error Handling
                            else {
                                System.out.println("Choose Valid option, try Again");

                            }
                        }

                    }
                }
//==========================================================================================================
                else if (IndexOption == 3) {
                    System.out.println("========== Support Staff");
                    System.out.println("Enter name of staff, Remember to enter the correct spelling for example Name:[Fahad not same as fahad] ");
                    String searchStaff = scannerBuffer.nextLine();

                    if (staff.contains(searchStaff)) {


                        //menu
                        System.out.print("Enter an option\n1: View complain\n2: Adding Comment\n3: Close Complain\n4: exit to Main Menu\n");

                        //handling Crash program
                        if (scannerBuffer.hasNextInt()) {

                            int staffMenu = Integer.parseInt(scannerBuffer.nextLine());
                            if (staffMenu == 1) {
                                System.out.println("===== My Assigned Complains =====");
                                for (int loop = 0; loop < staff.size(); loop++) {
                                    // Check if the name matches (ignoring case is usually better)

                                    if (staff.get(loop).equals(searchStaff)) {
//                                System.out.println("\n--- Ticket Found ---");
//                                System.out.println("ID: " + complainAssined.get(loop));
//                                System.out.println("Name: " + staff.get(loop));
//                                System.out.println("Comment: " + comment.get(loop));
                                        System.out.printf("= Staff[%s] --- ComplainID[%d] --- comments:[\"%s\"] \n", staff.get(loop), complainAssined.get(loop), comment.get(loop));
                                    } else {
                                        System.out.printf("Staff %s is not been found, try again ", searchStaff);

                                    }
                                }
                            } else if (staffMenu == 2) {
                                System.out.println("===== Add/Modify a comment ======");
                                System.out.print("Enter Complaint ID:\n");
                                int searchId = Integer.parseInt(scannerBuffer.nextLine());
                                for (int searchcomment = 0; searchcomment < complainAssined.size(); searchcomment++) {
                                    if (complainAssined.get(searchcomment) == (searchId)) {

                                        System.out.println("Current Comment: " + comment.get(searchcomment));


                                        System.out.print("Enter the new comment: ");
                                        String newComment = scannerBuffer.nextLine();


                                        comment.set(searchcomment, newComment);

                                        System.out.println("Update successful for " + staff.get(searchcomment) + "!");

                                    } else {
                                        System.out.println("ID not found. Try again");
                                    }

                                }
                            } else if (staffMenu == 3) {
                                System.out.println("===== Close Complains ======");
                                System.out.print("Enter Complaint ID:\n");
                                int searchCloseComplain = Integer.parseInt(scannerBuffer.nextLine());

//                            if (.equals(searchId)) {
//
//                                System.out.println("Current Comment: " + comment.get(searchcomment));
//
//
//                                System.out.print("Enter the new comment: ");
//                                String newComment = scannerBuffer.nextLine();
//
//
//                                comment.set(searchcomment, newComment);
//
//                                System.out.println("Update successful for " + staff.get(searchcomment) + "!");
//
//                            }
//                            else {
//                                System.out.println("ID not found. Try again");}
//
//                        }

                                if (searchCloseComplain >= complains.size() || searchCloseComplain < 0) {
                                    System.out.println("Current Status: " + complainStatus.get(searchCloseComplain));

                                    if (complainStatus.containsKey(searchCloseComplain) && complainStatus.containsValue("closed")) {
                                        System.out.println("Sorry cannot change already closed complain");

                                    } else {
                                        complainStatus.replace(searchCloseComplain, "closed");
                                        System.out.println("Sucessfully closed complain");
                                        System.out.println("New Status: " + complainStatus.get(searchCloseComplain));
                                    }
                                } else {
                                    System.out.println("Please type a vaild complain ID,try again");

                                }

                            }
                            else {
                                System.out.println("invaild option");

                            }
                        }
                    }
                    else {

                        System.out.println("Try again");

                    }
                }

//==========================================================================================================
                else if (IndexOption == 4) {


                    //closing program
                    menuIsRunning = false;
                    System.out.println("Goodbye!");
                }
            }
//==========================================================================================================
//  non existing input error handling
            else {
                System.out.println("try again.");
                System.out.println("please enter invalid option ex: Input = 1,2,3,4.....,5");
                scannerBuffer.nextLine();
            }
        }

        scannerBuffer.close();
    }
}

//Regarding complain status , New array list is been Added as new Input

//When new ticket is added the Array list store its status to "Open"

//Admin can change the status by calling the index and modifying the code.

//extending the admin page, new hash map added in input of the program , they will store [Key: value] for support staff

//support staff menu is located on admin option in the program