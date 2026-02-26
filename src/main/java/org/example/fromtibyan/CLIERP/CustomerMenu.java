package org.example.fromtibyan.CLIERP;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerMenu {
    static ArrayList<Complaints> Tickets = new ArrayList<>();
    static Scanner userInput = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Welcome to Customer menu! \nCreate a ticket");
        int compID;
        while (true) {
            System.out.println("Enter complaint ID: ");
            if (userInput.hasNextInt()) {
                compID = userInput.nextInt();
                break;
            } else {
                System.out.println("Please enter a valid complaint ID");
                userInput.next();
            }
        }
        userInput.nextLine();
        System.out.println("Enter complaint description: ");
        String compDes = userInput.nextLine();

        // fix this block for invalid input
            System.out.println("Enter complaint Priority. \n1.LOW 2.MEDIUM (default) 3.HIGH ");
            String comPri = userInput.nextLine().trim();
            int compriIndex = comPri.isEmpty() ? 2 : Integer.parseInt(comPri);
            if (compriIndex == 1) {
                comPri = "LOW";
            }
            else if (compriIndex == 2) {
                comPri = "MEDIUM";
            }
            else if (compriIndex == 3) {
                comPri = "HIGH";
            } else {
                System.out.println("Please select a valid number.");
            }
        // fix this block for invalid input

        Tickets.add(new Complaints(compID, compDes, comPri));
        System.out.println("Ticket Created Successfully!");

        userInput.nextLine();
        System.out.println("Ticket number to be viewed: ");
        int adminCompID = Integer.parseInt(userInput.nextLine());

        for (Complaints adminTicketId : Tickets) {
            if (adminTicketId.getComplaintId() == adminCompID) {
                System.out.println("Ticket Number: " + adminTicketId.getComplaintId());
                System.out.println("Description: " + adminTicketId.getComplaintDescription());
                System.out.println("Priority: " + adminTicketId.getComplaintPriority());
            }
        }
    }
}