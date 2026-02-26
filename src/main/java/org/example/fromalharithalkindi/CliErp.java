package org.example.fromalharithalkindi;

import java.util.Scanner;

public class CliErp {
    public static void main (String[] args){

        //=====================1) CLI ERP – Project Setup & Main Menu ============

        Scanner input=new Scanner(System.in);

        boolean run=true;

        while (run){

            System.out.println("\n \n1. Customer\n" +
                    "2. Admin\n" +
                    "3. Support Staff\n" +
                    "4. Exit\n \n ");
            System.out.print("enter number:");
            int choice=Integer.parseInt(input.nextLine());
            if(choice==1)
            {
                System.out.println("customer ");
            }
            else if (choice==2)
            {
                System.out.println("admin ");
            }
            else if (choice==3)
            {
                System.out.println("support ");
            }
            else if (choice==4)
            {
                System.out.println("exit ");
                run=false;
            }
            else
            {
                System.out.println("enter valid number please !!!!");
            }
        }
    }
}
