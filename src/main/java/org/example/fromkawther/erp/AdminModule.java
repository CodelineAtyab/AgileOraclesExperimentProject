package org.example.fromkawther.erp;
import java.util.Scanner;

public class AdminModule {
    public static void main (String[] args){
        Scanner Sc = new Scanner(System.in);
       final String ADMIN_PIN = "1234";
       int complaint1_id= 1;
       String complaint1_desc = "internet not working";
       String complaint1_status = "OPEN";
        int complaint2_id= 2;
        String complaint2_desc = "SW instllation request";
        String complaint2_status = "OPEN";
        int complaint3_id=3;
        String complaint3_desc = "printer issue";
        String complaint3_status = "OPEN";

        System.out.print("ُEnter Admin PIN:");
String pin= Sc.nextLine();
        if (!pin.equals(ADMIN_PIN)) {
            System.out.println("Incorrect PIN. Access denied");
            Sc.close();
            return;
        }
        System.out.println("Access");
        boolean running = true;
        while (running){
            System.out.println("\n ======Admin menu==========");
            System.out.println("1. view all complaints");
            System.out.println("2. Serch");
            System.out.println("3. close");
            System.out.println("4. Exit");
            System.out.print("choose an option:");
            int choice = Sc.nextInt();
            if (choice ==1){
                System.out.println("\ncomplaint 1: " + complaint1_desc + " | Status: " + complaint1_status);
                System.out.println("\ncomplaint 2: " + complaint2_desc + " | Status: " + complaint2_status);
                System.out.println("\ncomplaint 3: " + complaint3_desc + " | Status: " + complaint3_status);
            }
            else if (choice == 2) {

                System.out.println("Enter complaint ID to search:");
                int searchID = Sc.nextInt();

                if (searchID == complaint1_id) {
                    System.out.println(complaint1_desc + " | Status: " + complaint1_status);
                }
                else if (searchID == complaint2_id) {
                    System.out.println(complaint2_desc + " | Status: " + complaint2_status);
                }
                else if (searchID == complaint3_id) {
                    System.out.println(complaint3_desc + " | Status: " + complaint3_status);
                }
                else {
                    System.out.println("Complaint not found.");
                }
    if (searchID == complaint1_id){
        System.out.println(complaint2_desc + " | Status: " + complaint2_status);


    } else if (searchID == complaint3_id) {
                        System.out.println(complaint3_desc + " | Status: " + complaint3_status);
                    } else {
        System.out.println("Complaint not found.");

    }}
    else if (choice == 3){
                        System.out.print("Enter complaint ID to close: ");
                        int closeId = Sc.nextInt();
                        if (closeId == complaint1_id) {
                            if (complaint1_status.equals("CLOSED")) {
                                System.out.println("Complaint 1 is closed.");
                            } else {
                                complaint1_status = "CLOSED";
                                System.out.println("Complaint 1 closed done it .");
                            }
                        } else if (closeId == complaint2_id) {
                            if (complaint2_status.equals("CLOSED")) {
                                System.out.println("Complaint 2 is closed.");
                            } else {
                                complaint2_status = "CLOSED";
                                System.out.println("Complaint 2 closed done it.");
                            }
                        } else if (closeId == complaint3_id) {
                            if (complaint3_status.equals("CLOSED")) {
                                System.out.println("Complaint 3 is closed.");
                            } else {
                                complaint3_status = "CLOSED";
                                System.out.println("Complaint 3 closed done it.");
                            }
                        } else {
                            System.out.println("Complaint not found.");
                        }
                    } else if (choice == 4) {


                        running = false;
                        System.out.println("Exiting Admin Menu.");
                    }
                    else {
                        System.out.println("Invalid try agin.");
                    }
                }

                Sc.close();
            }
            }






