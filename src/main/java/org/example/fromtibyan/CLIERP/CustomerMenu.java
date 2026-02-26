package org.example.fromtibyan.CLIERP;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerMenu {
    static ArrayList<Complaints> Tickets = new ArrayList<>();
    static Scanner userInput = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Welcome to Customer menu! \nCreate a ticket");
        System.out.println("Enter complaint ID: ");
        int compID = userInput.nextInt();
        userInput.nextLine();
        System.out.println("Enter complaint description: ");
        String compDes = userInput.nextLine();
        System.out.println("Enter complaint Priority. \n1.LOW 2.MEDIUM 3.HIGH ");
        int compPri = userInput.nextInt();
        if (compPri > 3 || compPri < 0) {
            compPri = 2;
        }
        Tickets.add(new Complaints(compID, compDes, compPri - 1));
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