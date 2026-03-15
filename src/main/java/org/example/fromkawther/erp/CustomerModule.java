package org.example.fromkawther;

import org.example.fromkawther.erp.Assign;

import java.util.Scanner;
public class CustomerModule {
    public static class Complaint {

        int id;
        String description;
        String priority;
         Complaint(int id, String description,String priority){
            this.id=id;
            this.description=description;
             this.priority=priority;
        }

    }
        public static void main(String[] args) {
            Scanner Scanner = new Scanner(System.in);
            System.out.print("enter complain id:");
            int id = Scanner.nextInt();
            Scanner.nextLine();
            System.out.print("enter complain description:");
            String description = Scanner.nextLine();
            System.out.print("enter priority (LOW,MEDIUM,HIGH [default MEDIUM]:");
            String priority = Scanner.nextLine().toUpperCase();

            if ((priority.equals("LOW") || priority.equals("MEDIUM") || priority.equals("HIGH"))) {
                priority = "MEDIUM";
            }
                Complaint complaint = new Complaint(id, description, priority);
                System.out.println("complaint created Successflly");
                System.out.println("complaint id :" + complaint.id);
                System.out.println("description:" + complaint.description);
                System.out.println("priority: " + complaint.priority);
                Scanner.close();
            }

        }