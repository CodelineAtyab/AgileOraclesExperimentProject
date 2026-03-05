package org.example.fromrazan;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Task2 {
    private int complaintId;
    private Scanner scanner;
    private String priority;
    private String description;

    public Task2(int complaintId, String description, String priority) {
        if (complaintId <=0 ) {
            System.out.println("invalid  complaint ID :  ");
        }
        this.complaintId = complaintId;
        this.description = description;
        this.priority = (priority == null || priority.trim().isEmpty()) ? "MEDIUM" : priority.toUpperCase();
        this.scanner = new Scanner(System.in);

        System.out.println("enter complaint ID  ");
        int id = scanner.nextInt();

        System.out.println("Enter complaint description : ");
        this.description = scanner.nextLine();

        System.out.println("select priority: ");
        System.out.println("1.LOW");
        System.out.println("2.MEDIUM(default)");
        System.out.println("3.HIGH");

       String choice = scanner.nextLine();

       switch (choice){
           case"1":
               this.priority="LOW";
               break;

           case "2":
               this.priority="MEDIUM";
               break;

           case "3":
               this.priority="HIGH";
       }


    }

}
