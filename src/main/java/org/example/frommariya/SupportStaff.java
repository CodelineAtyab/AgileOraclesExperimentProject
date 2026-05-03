package org.example.frommariya;

import java.util.ArrayList;
import java.util.Scanner;

public class SupportStaff {
    public static void SupportMenu(Scanner scanner, ArrayList<ComplaintC> complaintCS){
        System.out.println("Please, Enter Staff Name: ");
        String name = scanner.nextLine();


        boolean support = true;
        while ( support ){
            System.out.println("---- SUPPORT MODULE %d----");
            System.out.println("1. View Assigned Complaints..");
            System.out.println("2. Add Comments..");
            System.out.println("3. Resolve to Main Menu..");
            System.out.println("4. Exit To Main Menu");
            System.out.println("Please Enter a Choice: ");

            String choice = scanner.nextLine();

            if ( choice.equals("1")){
                viewComp(complaintCS,name);
            }
            else if ( choice.equals("2")){
                addComments(scanner,complaintCS,name);
            }
            else if ( choice.equals("3")){
                resolveTickets(scanner,complaintCS,name);
            }
            else if ( choice.equals("4")){
                support = false;
            }
        }
    }

    private static void viewComp(ArrayList<ComplaintC> complaintCS, String name){
        boolean founded = false;
        for ( ComplaintC c : complaintCS){
            if ( c.assignTo.equalsIgnoreCase(name)){
                System.out.println(c);
                founded = true;
            }
        }
        if (!founded) {
            System.out.println("No Complaints");
        }
    }

    private static void addComments(Scanner scanner, ArrayList<ComplaintC> complaintCS, String name){
        System.out.println("Please Enter Complaint ID: ");
        int id = Integer.parseInt(scanner.nextLine());

        for (ComplaintC c : complaintCS){
            if (c.id == id){
                if ( !c.assignTo.equalsIgnoreCase(name)){
                    System.out.println("Error! Assigned Ticket Already");
                }
                else if (c.status.equals("CLOSED")){
                    System.out.println("Error! Closed Complaints can be added a comment");
                }
                else {
                    System.out.println("Enter a Comment: ");
                    String comments = scanner.nextLine();
                    c.comment.add(comments);
                    System.out.println("COMMENT ADDED SUCCESSFULLY");
                }
                return;
            }
        }
        System.out.println("Ticket Written Not Found!");
    }

    private static void resolveTickets(Scanner scanner,ArrayList<ComplaintC> complaintCS,String name){
        System.out.println("Please, Enter ID To Resolve: ");
        int id = Integer.parseInt(scanner.nextLine());

        for ( ComplaintC c : complaintCS){
            if ( c.id == id){
                if ( !c.assignTo.equalsIgnoreCase(name)){
                    System.out.println("Error! Failed ");
                }
                else if ( c.status.equals("CLOSED") ){
                    System.out.println("Complaint Already Closed!");
                }
                else {
                    c.status = "CLOSED";
                    System.out.println("Success: Ticket: "+id+ " RESOLVED");
                }
                return;
            }
        }
        System.out.println("Ticket not Found!..");
    }

}
