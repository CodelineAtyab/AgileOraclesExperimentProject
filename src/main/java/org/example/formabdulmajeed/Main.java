package org.example.formabdulmajeed;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        boolean mainMenu = true;
        ArrayList<Integer> complainId = new ArrayList<Integer>();
        ArrayList<String> complainDescrption = new ArrayList<String>();
        ArrayList<String> complainPriority = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<String>();
        int id = 0;
        String description;
        String priority;
        while (mainMenu){
            System.out.println("========THE MAIN MENU==========");
            System.out.println("[1] Customer\n[2] Admin\n[3] Support staff\n[4] Exit");

            //====customer===
            int userChoise = input.nextInt();
            input.nextLine();
            if (userChoise== 1){

                System.out.println("Customer oprations: \nEnter complaint ID: ");
                if (input.hasNextInt()) {
                    id = input.nextInt();
                }else {
                    System.out.println("Invalid input");
                }

                System.out.println("Enter description of your complain: ");
                description = input.nextLine();
                if (description.trim().isEmpty()) {
                    input.nextLine();
                } else {
                    System.out.println("Description can't be empty");
                }


                System.out.println("Select priority of complin:\n1.Low\n2.Medium\n3.High");
                priority = "Medium";
                int userPriorty = input.nextInt();
                if (userPriorty == 1) {
                    System.out.println("Low");
                } else if (userPriorty == 2){
                    System.out.println("Medium");
                }else if (userPriorty == 3){
                    System.out.println("High");
                }else {
                    System.out.println("The priority is set Medium as default");
                }
                System.out.println("Complaint created successfully");
                complainId.add(id);
                complainDescrption.add(description);
                complainPriority.add(priority);
                complainStatus.add("open");
            }
            //=====admin module
            else if (userChoise == 2){
                System.out.println("Admin oprations:");
                System.out.println("Please enter PIN:");
                int pinAdmin = input.nextInt();
                if (pinAdmin== 9266){
                    System.out.println("Correct PIN. You are logged in as admin");
                }else {
                    System.out.println("Access denied invalid PIN");
                }
                System.out.println("1. View complaints\n2. Search complaint\n3. close complaint\n4. Exit");
                int admainChoice = input.nextInt();
                if (admainChoice == 1){
                    System.out.println("View all complaints: ");
                    if (complainId.isEmpty()){
                        System.out.println("No complaint found.");
                    }
                    else for (int i = 0; i < complainId.size(); i++) {
                        System.out.println("Complaint ID: " + complainId.get(i));
                        System.out.println("Description: " + complainDescrption.get(i));
                        System.out.println("Priority: " + complainPriority.get(i));
                        System.out.println("Status: " + complainStatus.get(i));
                    }

                }
                    else if (admainChoice == 2) {
                    System.out.println("Search by entring the ID");
                            int searchId = input.nextInt();
                            input.nextLine();

                            int index = complainId.indexOf(searchId);

                            if (index == -1) {
                                System.out.println("Complaint not found.");
                            } else {
                                System.out.println("ID: " + complainId.get(index));
                                System.out.println("Description: " + complainDescrption.get(index));
                                System.out.println("Priority: " + complainPriority.get(index));
                                System.out.println("Status: " + complainStatus.get(index));
                            }
                        }
                    else if (admainChoice == 3){
                    System.out.println("Enter the ID you want to close");
                        int closeId = input.nextInt();
                        input.nextLine();

                        int closeIndex = complainId.indexOf(closeId);

                        if (closeIndex == -1) {
                            System.out.println("Complaint not found.");
                        } else if (complainStatus.get(closeIndex).equals("CLOSED")) {
                            System.out.println("Complaint already CLOSED.");
                        } else {
                            complainStatus.set(closeIndex, "CLOSED");
                            System.out.println("Complaint closed successfully.");
                        }

                }else if (userChoise== 4){
                    System.out.println("Exit to main menu");
                }
            }
                else if (userChoise == 3){
                System.out.println("Support staff:");
            }
            else if (userChoise == 4){
                System.out.println("Thank you for visiting");
                mainMenu = false;
            }
            else {
                System.out.println("Sorry this choice is invalid");
            }
    }
}
}

