package org.example.fromalharith;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    static Scanner scan = new Scanner(System.in);

    public static void main(String[] args) {

        ArrayList<Integer> complaintIds = new ArrayList<>();
        ArrayList<String> complaintDescriptions = new ArrayList<>();
        ArrayList<String> complaintPriorities = new ArrayList<>();

        boolean name = true;
        System.out.println("   (Choose: 1,2,3,4)");


        int idCounter = 1;
        boolean complaint = true;

        while (complaint) {

            String menu = scan.nextLine().trim();
            if (!menu.matches("[1-4]")) {
                System.out.println("Invalid input! Please enter a number between 1 and 4.");
               continue;
            }

            switch (menu) {
                case "1":
                    System.out.println("1. Customer");
                    Scanner sc= new Scanner(System.in);

                    // ArrayList for Complaints



                    System.out.println("<Please Enter Your Complaint>");




                    while(complaint){

                        System.out.println("   1. Create Complaint");
                        System.out.println("   2. View Complaints");
                        System.out.println("   3. Exit");
                        System.out.print("Choose an Option: ");


                        String choice = sc.nextLine();

                        if(choice.equals("1")){

                            System.out.println("Add your Complaint ");
                            String des = sc.nextLine();


                            System.out.print("Enter priority (Low / Medium / High): ");
                            String priority = sc.nextLine();


                            complaintIds.add(idCounter);
                            complaintDescriptions.add(des);
                            complaintPriorities.add(priority);

                            idCounter++;


                        } else if (choice.equals("2")) {

                            if (complaintIds.isEmpty()) {
                                System.out.println(" No complaints found.");

                            } else {

                                System.out.println("\n--- Complaints List ---");
                                for (int i = 0; i < complaintIds.size(); i++) {

                                    System.out.println(

                                            "ID: " + complaintIds.get(i)

                                                    + " | Description: " + complaintDescriptions.get(i)

                                                    + " | Priority: " + complaintPriorities.get(i)

                                    );

                                }

                            }


                        } else if (choice.equals("3")) {

                            complaint = false;

                            System.out.println("Exiting system...");

                        } else {
                            System.out.println("Invalid choice!");

                        }
                    }

                    // sc.close();



                    break;

                case "2":
                    System.out.println("2. Admin");
                    break;

                case "3":
                    System.out.println("3. Support Staff");
                    break;

                case "4":
                    System.out.println("4. Exit");
                    name = false;
                    break;

            }
        }

        scan.close();



    }
}
