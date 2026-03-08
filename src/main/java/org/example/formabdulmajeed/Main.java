package org.example.formabdulmajeed;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        boolean mainMenu = true;
        ArrayList<String> complainId = new ArrayList<String>();

        while (mainMenu){
            System.out.println("========THE MAIN MENU==========");
            System.out.println("[1] Customer\n[2] Admin\n[3] Support staff\n[4] Exit");

            //====customer===
            int userChoise = input.nextInt();
            input.nextLine();
            if (userChoise== 1){
                int id = 0;
                System.out.println("Customer oprations: \nEnter complaint ID: ");
                if (input.hasNextInt()) {
                    id = input.nextInt();
                }else {
                    System.out.println("Invalid input");
                }
                String description;
                System.out.println("Enter description of your complain: ");
                description = input.nextLine();
                if (description.trim().isEmpty()) {
                    input.nextLine();
                } else {
                    System.out.println("Description can't be empty");
                }


                System.out.println("Select priority of complin:\n1.Low\n2.Medium\n3.High");
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

                String[] complaint = {
                        String.valueOf(id),description,String.valueOf(userPriorty)
                };
                complainId.add(Arrays.toString(complaint));
            }
            else if (userChoise == 2){
                System.out.println("Admin oprations:");
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
