package org.example.fromabdullahhosni;
import java.util.ArrayList;
import java.util.Scanner;

public class CilErp {
    public static void main(String[] args) {
//  Implemeting a scanner
        Scanner scannerBuffer = new Scanner(System.in);

//Input Storing
        ArrayList<String> complains = new ArrayList<String>();
        ArrayList<String> Descriptions = new ArrayList<String>();
        ArrayList<String> complainsProiorty = new ArrayList<String>();
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
                    String complainIndex = scannerBuffer.nextLine();
                    System.out.println("Enter the complain Description..>");
                    String complainDescription = scannerBuffer.nextLine();
                    //error handling
                    if (complainDescription.isEmpty() && complainIndex.isEmpty()){
                        System.out.println("please fill all options, try again!");
                    }
                    else {
                        System.out.println("Successfully added");
                        complains.add(complainIndex);
                        Descriptions.add(complainDescription);
                        complainsProiorty.add(proiorty[1]);
                        //Displaying
                        int currentComplain = complains.indexOf(complainIndex);
                        System.out.printf("Complain ID: [%s]\n", complains.get(currentComplain));
                        System.out.printf("Description: %s\n", Descriptions.get(currentComplain));

                        //changeing proiorty
                        System.out.println("proiorty : Set to [Medium]Default , do you wat to change it (Y/n)?");
                        String changeProiorty = scannerBuffer.nextLine();
                        if (changeProiorty=="y" || changeProiorty=="Y" ||  changeProiorty=="yes" || changeProiorty=="YES"){
                            System.out.printf("ComplainID\t\t %s\n", complains.get(currentComplain));
                            System.out.printf("Current status : [%s]\n",complainsProiorty.get(currentComplain));
                            //removing old one
                            complainsProiorty.remove(currentComplain);

                            System.out.print("choose the new status \"Low\" \"High\" \"Medium\" .....>\t");
                            String chooseProiorty = scannerBuffer.nextLine();
                            //choosing priorty
                            if (chooseProiorty=="low" || chooseProiorty=="LOW"){
                                complainsProiorty.add(proiorty[0]);
                            }
                            else if(chooseProiorty== "high" || chooseProiorty=="HIGH" ){
                                complainsProiorty.add(proiorty[2]);
                            }
                            else if (chooseProiorty=="medium" ||chooseProiorty=="Medium"){
                                complainsProiorty.add(proiorty[3]);
                            } else {
                                System.out.println("Somthing Went Wrong, please choose the right option or try again!");
                            }
                        } else {
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


