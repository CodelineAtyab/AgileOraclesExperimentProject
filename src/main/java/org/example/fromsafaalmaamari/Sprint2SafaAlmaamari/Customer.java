package org.example.fromsafaalmaamari.Sprint2SafaAlmaamari;

import java.util.ArrayList;
import java.util.Scanner;

public class Customer {
    public static void main(String[] args) {

        Scanner scanner = new Scanner((System.in));
        ArrayList<String> complaints = new ArrayList<>();


        System.out.println("Customer Module ");
        System.out.print("Enter Complaint ID: ");
        int complaintId = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Enter Complaint Description: ");
        String complaintDesc = scanner.nextLine();
        System.out.println("Select Priority: ");
        System.out.println("1. LOW");
        System.out.println("2. MEDIUM (default)");
        System.out.println("3. HIGH");
        System.out.println("Select priority");
        int selectedPriority = scanner.nextInt();

        String priority;

        if (selectedPriority == 1) {
            priority = "LOW";
        }else if (selectedPriority == 2){
            priority ="HIGH";
        }else {
            priority ="MEDIUM";
        }
        String complaint = "Complaint ID:" + complaintId + ", complaint Description:" + complaintDesc + ", priority:" + priority;

        System.out.println(" Complaint Created Successfully..");



    }


}
