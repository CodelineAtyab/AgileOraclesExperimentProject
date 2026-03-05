package org.example.frommariya;

import java.util.Scanner;
import java.util.ArrayList;

public class AdminModule{
    private static final String Admin_PIN = "1212";

    public static void adminMenu(Scanner scanner, ArrayList<ComplaintC> complaintCS){
        System.out.println("Please Enter the Admin PIN: ");
        String pinAdmin = scanner.nextLine();

        if(!pinAdmin.equals(Admin_PIN)){
            System.out.println("Incorrect Admin PIN, Try Again");
            return;
        }


        boolean session = true;
        while(session){
            System.out.println("------- ADMIN MANAGEMENT -------");
            System.out.println("1. View Complaints");
            System.out.println("2. Search Complaints using ID's");
            System.out.println("3. Close  Complaint ");
            System.out.println("4. Assign a Complaint to a Staff");
            System.out.println("5. Exit ");
            System.out.print("Enter Option Please: ");

            String choice = scanner.nextLine();

            if( choice.equals("1") ){
                viewComp(complaintCS);
            }
            else if ( choice.equals("2")){
                searchComp(scanner,complaintCS);
            }
            else if ( choice.equals("3")){
                closeComp(scanner,complaintCS);
            }
            else if ( choice.equals("4")){
                assignedToStaff(scanner,complaintCS);
            }
            else if ( choice.equals("5")){
                session = false;
            }
            else {
                System.out.println("Invalid Option Number, Try Again");
            }

        }
    }

    private static void assignedToStaff(Scanner scanner, ArrayList<ComplaintC> complaintCS){
        System.out.println("Please Enter ID of A complaint to Assign: ");
        int assignID = Integer.parseInt(scanner.nextLine());

        ComplaintC targeted = null;
        for (ComplaintC c : complaintCS){
            if (c.id == assignID){
                targeted =c;
                break;
            }
        }
        if ( targeted == null ){
            System.out.println("ID Of Complaint does not Exist! Try Again");
            return;
        }
        System.out.println("Please Enter Support Staff Name:.. ");
        String name = scanner.nextLine();

        targeted.assignTo = name;
        System.out.println("Success! \n Complaint: "+assignID+ " is Assigned to: "+name);
    }





    private static void viewComp(ArrayList<ComplaintC> complaintCS){
        if ( complaintCS.isEmpty()){
            System.out.println("No Such Complaints");
        }
        else {
            for (ComplaintC c : complaintCS){
                System.out.println(c);
            }
        }
    }

    private static void searchComp(Scanner scanner, ArrayList<ComplaintC> complaintCS){
        System.out.print("Please Enter a Complaint ID: ");
        int search = Integer.parseInt(scanner.nextLine());
        boolean founded = false;

        for (ComplaintC c : complaintCS){
            if ( c.id == search){
                System.out.println("The Searched ID is: "+c);
                founded = true;
                break;
            }
        }
        if( !founded) {
            System.out.println("No Such Complaint ID");
        }
    }

    private static void closeComp(Scanner scanner, ArrayList<ComplaintC> complaintCS){
        System.out.print("Please, Enter ID of a Complaint to Close it: ");
        int idClosing = Integer.parseInt(scanner.nextLine());

        for (ComplaintC c : complaintCS){
            if (c.id == idClosing){
                if( c.status.equals("Closed")){
                    System.out.println("Error: The Complaint is Closed Before");
                }
                else
                {
                    c.status = "Closed";
                    System.out.println("Complaint with ID: "+idClosing+ " has been Closed Successfully!");
                }
                return;
            }
        }
        System.out.println("Error: Not Found Complaint ID");
    }
}