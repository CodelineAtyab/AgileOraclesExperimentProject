package org.example.formabdulmajeed;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        boolean mainMenu = true;
        ArrayList<Integer> complainId = new ArrayList<Integer>();
        ArrayList<String> complainDescrption = new ArrayList<String>();
        ArrayList<String> complainPriority = new ArrayList<String>();
        ArrayList<String> complainStatus = new ArrayList<String>();
        ArrayList<String> complainStaff = new ArrayList<String>();
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
                    input.nextLine();
                }else {
                    System.out.println("Invalid input");
                }

                System.out.println("Enter description of your complain: ");
                description = input.nextLine();

                if (description.trim().isEmpty()) {
                    System.out.println("Description can't be empty");
                    continue;
                }


                System.out.println("Select priority of complin:\n1.Low\n2.Medium\n3.High");
                priority = "Medium";
                int userPriorty = input.nextInt();
                if (userPriorty == 1) {
                    priority = "Low";
                } else if (userPriorty == 2){
                    priority = "Medium";
                }else if (userPriorty == 3){
                    priority = "High";
                }else {
                    System.out.println("The priority is set Medium as default");
                }
                System.out.println("Complaint created successfully");
                complainId.add(id);
                complainDescrption.add(description);
                complainPriority.add(priority);
                complainStatus.add("open");
                complainStaff.add("Not assigned");

            }
            //=====admin module
            if (userChoise == 2){
                System.out.println("Admin oprations:");
                System.out.println("Please enter PIN:");
                int pinAdmin = input.nextInt();
                if (pinAdmin== 9266){
                    System.out.println("Correct PIN. You are logged in as admin");
                    System.out.println("1. View complaints\n2. Search complaint\n3. close complaint\n4. assign complin to staff\n5. view assigned compliant\n6. Exit");
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
                        System.out.println("Search by entering the ID");
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
                    }
                    else if (admainChoice == 4){
                            System.out.println("Enter the compliant ID to assign to staff");
                            int searchInId = input.nextInt();
                            input.nextLine();

                            int indexId = -1;

                            for (int i = 0; i < complainId.size(); i++) {
                                if (complainId.get(i) == searchInId) {
                                    indexId = i;
                                    break;
                                }
                            }

                            if (indexId == -1) {
                                System.out.println("Complaint not found.");
                            }
                            else if (complainStatus.get(indexId).equalsIgnoreCase("closed")) {
                                System.out.println("Closed complaints cannot be assigned.");
                            }
                            else {
                                System.out.println("Enter staff name:");
                                String staff = input.nextLine();
                                complainStaff.set(indexId, staff);
                                System.out.println("Complaint assigned to " + staff);
                            }
                        }
                        else if (admainChoice == 5){
                            System.out.println("view all assigned compliant");
                            if (complainId.isEmpty()){
                                System.out.println("There is no compliants");
                            }else{
                                for (int i = 0; i < complainId.size(); i++){
                                    System.out.println("ID:"+ complainId.get(i));
                                    System.out.println("Descrption:"+ complainDescrption.get(i));
                                    System.out.println("Priority:"+ complainPriority.get(i));
                                    System.out.println("Status:"+ complainStatus.get(i));
                                    System.out.println("Assigned Staff:"+ complainStaff.get(i));
                                }
                            }
                        }
                    else if (userChoise== 6){
                        System.out.println("Exit to main menu");
                    }
                }
                else {
                    System.out.println("Access denied invalid PIN");
                }

            }
            //=====staff
                else if (userChoise == 3){
                System.out.println("Support staff: \n1. \n2. ");



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

