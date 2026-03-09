package org.example.fromkhadija.Sprint2;


import java.util.HashMap;
import java.util.Scanner;

public class Support_Staff_Module {
    public static void main(String[] args){

        Scanner staffScanner = new Scanner(System.in);
        boolean menuRunning = true;

        // First staff member have to enter his password to prevent any other staff member to access in his complaints

        System.out.println("Enter your Password: ");
        int passstaff = Integer.parseInt(staffScanner.nextLine());

        while(passstaff != 98765){

            System.out.println("Incorrect Password :( , Try Again ");
            passstaff = Integer.parseInt(staffScanner.nextLine());

        }
        System.out.println("Correct Password :)");

        int id [] = {111, 222, 333, 444};

        // Assignments Arraylist
        HashMap Assignments = new HashMap<>();
        Assignments.put(111,"Complete your task");
        Assignments.put(222, "Poor to Performence");
        Assignments.put(333, "Technical Issue");
        Assignments.put(444, "Technical Issue");



        // Comments/ Replies
        String replies = staffScanner.nextLine();
        HashMap Comments = new HashMap<>();


        while (menuRunning){

            System.out.println("Enter your choice: ");
            int choice = Integer.parseInt(staffScanner.nextLine());

            if (choice == 1){

                System.out.println("========== View Assigned Complaints.==========");
                System.out.println(Assignments);
            }
            else if(choice == 2){

                System.out.println("========== Add Comments or Replies. ==========");

                for (int i = 111; i <= 3; i++){

                     System.out.printf("%d --(Replies)--> ",i);
                     Comments.put(i, replies);
                     replies = staffScanner.nextLine();
                }
                System.out.println( " The comments"+ Comments);


            }

            else if(choice == 3){

                System.out.println("========== Close Assigned Complaints. ==========");

            }
            else{
                menuRunning = false;
            }
        }


    }
}
