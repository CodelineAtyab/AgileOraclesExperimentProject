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

        String comPri;
        while (true) {
            System.out.println("Enter complaint Priority. \n1.LOW 2.MEDIUM (default) 3.HIGH ");
            String priority = userInput.nextLine();

            if (priority.isEmpty()) {
                comPri = "MEDIUM";
                break;
            }

            int comPriIndex;
            try {
                comPriIndex = Integer.parseInt(priority);
            } catch (NumberFormatException e) {
                System.out.println("Please enter a valid complaint priority number.");
                continue;
            }

            if (comPriIndex == 1) {
                comPri = "LOW";
                break;
            } else if (comPriIndex == 2) {
                comPri = "MEDIUM";
                break;
            } else if (comPriIndex == 3) {
                comPri = "HIGH";
                break;
            } else {
                System.out.println("Please select a valid priority number 1-3.");
            }
        }

        Tickets.add(new Complaints(compID, compDes, comPri));
        System.out.println("Ticket Created Successfully!");
    }
}