package org.example.fromahed.Sprint1;

import java.util.Scanner;

public class Customer {
    public static void main(String[] args) throws ExceptionInInitializerError {
        //Declaration
        Scanner inputCus = new Scanner(System.in);
        //input
        System.out.println("Dear customer enter your information here");
        //if I want user to enter ID :
        int id = 0;
        //here will define if the id valid/invalid
        while (id <= 0) {
            System.out.println(" Enter your ID:  ");
            id = inputCus.nextInt();
            if (id <= 0) {
                System.out.println(" Your enter ID is invalid ");
            }
        }
        inputCus.nextLine();
        //we want user to add Description :
        String description = "";
        while (description.isEmpty()) {
            System.out.print("please add your Description:  ");
            description = inputCus.nextLine();
            if (description.isEmpty()) {
                System.out.println(" Your enter Description is invalid can not be empty ");
            }
        }
        //we want user to choose Priority :
        System.out.println("Dear customer select your priority:LOW \\ MEDIUM \\ HIGH");
        String prioritys = inputCus.nextLine().trim().toUpperCase();
        // Set as Default if  its empty.
        if (prioritys.isEmpty()) {
            prioritys = "MEDIUM";
        }
        // in this loop will Keep asking until valid.
        // as we know "!" its mean if condition true so result false.
        // "&&" its mean should all conditions must be true.
        while (!prioritys.equals("LOW") && !prioritys.equals("MEDIUM") && !prioritys.equals("HIGH")) {
            System.out.println("Invalid priority selected.");
            System.out.println("Enter priority: LOW \\ MEDIUM \\ HIGH");
            prioritys = inputCus.nextLine().toUpperCase();

            if (prioritys.isEmpty()) {
                prioritys = "MEDIUM";
            }
        }
        String priority = prioritys;
        System.out.println("Selected priority: " + priority);

        String[] customer = new String[3];
        customer[0] = String.valueOf(id);
        customer[1] = description;
        customer[2] = prioritys;

        System.out.println(" saved successfully!");
        System.out.println(" Your ticket its ready: ");
        System.out.println(" ID: " + customer[0]);
        System.out.println(" description: " + customer[1]);
        System.out.println(" prioritys: " + customer[2]);
    }
}
