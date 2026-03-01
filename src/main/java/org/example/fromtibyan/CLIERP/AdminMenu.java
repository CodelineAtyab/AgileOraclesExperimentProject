package org.example.fromtibyan.CLIERP;

import java.util.Scanner;

public class AdminMenu {
    public static void main (){
        Scanner userInput = new Scanner(System.in);
        int tries = 1;
        while (tries <= 3){
            System.out.println(" \nPlease enter password: ");
            int password = userInput.nextInt();
            if (password == 1234){
                System.out.println("Password is correct!");
                System.out.println("##### Welcome to Admin menu #####");
                System.out.println("1.View all complaints");
                System.out.println("2.Search complaint by ID");
                System.out.println("3.Close a complaint");
                int adminOption = userInput.nextInt();
                if (adminOption == 1){
                    System.out.println("---- All Complaint Tickets ----");
                    for (Complaints compTickets : CustomerMenu.Tickets){
                        System.out.println("Complaint ID: " + compTickets.getComplaintId());
                        System.out.println("Complaint Description: " + compTickets.getComplaintDescription());
                        System.out.println("Complaint Priority: " + compTickets.getComplaintPriority());
                        System.out.println("-----------------------------");
                    }
                } else if (adminOption == 2) {
                    System.out.println("---- Complaint Tickets by ID ----");
                    System.out.println("Enter the complaint ID of ticket to be viewed: ");
                    if (userInput.hasNextInt()) {
                        int adminCompID = userInput.nextInt();
                        for (Complaints adminTicketId : CustomerMenu.Tickets) {
                            if (adminCompID == adminTicketId.getComplaintId()) {
                                System.out.println("Complaint ID: " + adminTicketId.getComplaintId());
                                System.out.println("Complaint Description: " + adminTicketId.getComplaintDescription());
                                System.out.println("Complaint Priority: " + adminTicketId.getComplaintPriority());
                            }
                        }
                    } else {
                        System.out.println("Please search using a valid complaint ID.");
                    }

                } else if (adminOption == 3) {

                }
            }else {
                System.out.printf("Wrong password, attempt %d%n",tries);
                tries ++;
            }
        }


    }
}
