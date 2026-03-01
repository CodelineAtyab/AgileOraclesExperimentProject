package org.example.fromabdullahhosni;

import java.util.ArrayList;
import java.util.Scanner;

public class CilErp {
    public static void main(String[] args) {
//  Implemeting a scanner
        Scanner scannerBuffer = new Scanner(System.in);

//Input Storing
        ArrayList<Integer> complains = new ArrayList<Integer>();
        ArrayList<String> descriptions = new ArrayList<String>();
        ArrayList<String> complainsProiorty = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<>();
        String[] proiorty = {"Low","Medium","High"};
//  Looping Menu
        boolean menuIsRunning = true;
        while (menuIsRunning==true){
//  Menu
            System.out.println("============ Wellcome - Main Menu =============");
            System.out.println("Please choose an option");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");
            System.out.println("*==================================*      ");
//  Input
            int IndexOption = Integer.parseInt(scannerBuffer.nextLine());


//  menu Options
//==========================================================================================================
            if (IndexOption==1){
                System.out.println("Customer module");
                System.out.println("Enter an option :\n1: create a Complain\n2: Exit to main menu");
                int customerIndex = Integer.parseInt(scannerBuffer.nextLine());
                if (customerIndex== 1){
                    System.out.println("Enter the complain ID..>");
                    //taking Input
                    int complainIndex = Integer.parseInt(scannerBuffer.nextLine());
                    System.out.println("Enter the complain Description..>");
                    String complainDescription = scannerBuffer.nextLine();
                    //error handling
                    if (complainDescription.isEmpty() || complainIndex==0){
                        System.out.println("please fill all options, try again!");
                    }
                    else {
                        //processing - Adding complains
                        complains.add(complainIndex);
                        descriptions.add(complainDescription);
                        complainsProiorty.add(proiorty[1]);
                        //adding complain status
                        complainStatus.add("Open");
                        System.out.println("Successfully added");

                        //Displaying complains
                        int currentComplain = complains.indexOf(complainIndex);
                        System.out.printf("Complain ID: #[%s]\n", complains.get(currentComplain));
                        System.out.printf("Description: %s\n", descriptions.get(currentComplain));

                        //changeing proiorty
                        System.out.println("proiorty : Set to [Medium]Default , do you wat to change it (Y/n)?");
                        String changeProiorty = scannerBuffer.nextLine();

                        if (changeProiorty.equals("y") || changeProiorty.equals("Y") ||  changeProiorty.equals("yes") || changeProiorty.equals("YES")){
                            System.out.printf("ComplainID\t\t %s\n", complains.get(currentComplain));
                            System.out.printf("Current status : [%s]\n",complainsProiorty.get(currentComplain));
                            //removing old one
                            complainsProiorty.remove(currentComplain);

                            System.out.print("choose the new status \"Low\" \"High\" \"Medium\" .....>\t");
                            String chooseProiorty = scannerBuffer.nextLine();

                            //choosing priorty
                            if (chooseProiorty.equals("low") || chooseProiorty.equals("LOW")){
                                complainsProiorty.add(proiorty[0]);
                            }
                            else if(chooseProiorty.equals("High") || chooseProiorty.equals("HIGH") ){
                                complainsProiorty.add(proiorty[2]);
                            }
                            else if (chooseProiorty.equals("medium") ||chooseProiorty.equals("Medium")){
                                complainsProiorty.add(proiorty[1]);
                            } else {
                                System.out.println("Something Went Wrong, please choose the right option or try again!");
                            }
                            System.out.println("Successfully ");
                        }

                        else {
                            System.out.println("try again, please these options  y/yes : n/no\n");
                        }
                    }
                }
                //error handling
                else {
                    System.out.println("\t\t\tGoing back to Main Menu");
                }
            }
//==========================================================================================================
            else if (IndexOption==2){
                //!!!!!!!!
                // Top Secret- Please Keep this Safe
                //++++++++++++++++++++++
                int adminPIN = 12345678;
                //++++++++++++++++++++++
                System.out.println("========= Admin Login ");
                System.out.println("Please Enter the Admin Pin to Login");
                int adminPinIndex = Integer.parseInt(scannerBuffer.nextLine());

                if (adminPinIndex!=adminPIN){

                    System.out.println("Invaid Pin\t\t\t No Access Granted! try Again");
                }
                else {

                    System.out.println("Admin User Granted\n\n\nEnter an option :\n1: View All Complains\n2: Search a complaint by ID\n3: close a complaint\n4: Exit to main menu");
                    int adminMenuOption = Integer.parseInt(scannerBuffer.nextLine());
                    //Admin option 1
                    if (adminMenuOption==1){

                        System.out.println("======== Report Of All Complains =========\n ");
                        //Printing ALL Complains Tickets
                        for (int allComplains = 0;allComplains< complains.size();allComplains++){
                            System.out.printf("# --- Id[%d]\tDescription[%s]\tProiorty[%s]\n", complains.get(allComplains)
                                    ,descriptions.get(allComplains), complainsProiorty.get(allComplains));
                        }
                    }
                    //Admin option 2
                    else if (adminMenuOption==2){

                        System.out.println("Complain Search --\t\tEnter ComplainID example[Complain ID:6685] ..>");
                        int searchComplain = Integer.parseInt(scannerBuffer.nextLine());
                        int searchComplainIndex = complains.indexOf(searchComplain);

                        if (searchComplainIndex!= -1){

                            System.out.printf("Ticket #[%s] Details\n: ", searchComplain);
                            System.out.println("description:" + descriptions.get(searchComplainIndex));
                            System.out.println("Proiorty: " + complainsProiorty.get(searchComplainIndex));
                        }
                        else {

                            System.out.println("ComplainID Is Missmatching or Incorrect, please try again\n........");
                        }
                    }
                    //Admin option 3
                    else if (adminMenuOption==3){

                        System.out.println("========== Closing complain");
                        System.out.println("Enter the complain Id Example[ComplainID: 8868]");
                        int closingComplain = Integer.parseInt(scannerBuffer.nextLine());

                        int searchComplainIndex = complains.indexOf(closingComplain);

                        if (searchComplainIndex >= complains.size() || searchComplainIndex < 0){

                            System.out.println("Try again");
                        }
                        else {

                            System.out.println("Closing complain *******");
                            //changing the status from open to close
                            complainStatus.set(searchComplainIndex, "Closed");
                            System.out.printf("Sucessfully!\nclosed the complain: #[%s]\ncomplain status changed to >>>>>>>>>> %s\n",complains.get(searchComplainIndex), complainStatus.get(searchComplainIndex));
                        }
                    }
                    //Admin option 4
                    else if (adminMenuOption==4){

                    }
                    //Error Handling
                    else {
                        System.out.println("Choose Valid option, try Again");
                    }
                }
            }
//==========================================================================================================
            else if (IndexOption==3){



            }

//==========================================================================================================
            else if (IndexOption==4){




            }
//==========================================================================================================
//  non existing input error handling
            else {
                System.out.println("non - existing menu options! try again.");
            }
        }

    }
}

//Regarding complain status , New array list is been Added as new Input

//When new ticket is added the Array list store its status to "Open"

//Admin can change the status by calling the index and modifying the code.


