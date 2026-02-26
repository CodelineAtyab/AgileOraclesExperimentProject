package org.example.fromalharithalkindi;

import java.util.ArrayList;
import java.util.Scanner;

public class CliCustomerModule {
    public static void main (String[] args) {
        //======future/86ewpkv90-cli-erp–customer-module-create-complaint====

        Scanner input = new Scanner(System.in);
        ArrayList<Integer> userId = new ArrayList<Integer>();
        ArrayList<String> userDes = new ArrayList<String>();
        ArrayList<String> levl = new ArrayList<String>();

        boolean run = true;

        String[] level = {" Low ", " Medium ", " High"};



        System.out.println("========== customer Page ==========");
        // while (userMenuRun)

        System.out.println("1.creat complain ");
        System.out.println("2.exit to main menu ");
        int userMenuChoice=Integer.parseInt(input.nextLine());

        if(userMenuChoice==1)
        {
            System.out.println("\n");
            System.out.print("Enter complain ID:");
            int comId = Integer.parseInt(input.nextLine());
            userId.add(comId);

            System.out.print("Enter complaint:");
            String comDes = input.nextLine();
            userDes.add(comDes);


            System.out.println("your complaint by defult set to medium if you want to change? " +
                    "\n enter 1 for yes" +
                    "\n enter 2 for no");
            int priorityChoice = Integer.parseInt(input.nextLine());

            if (priorityChoice == 1) {
                System.out.println("[1] Low \t [2] Medium \t [3] High");
                System.out.print("Set priority to your Complaint:");
                int prLev = Integer.parseInt(input.nextLine());
                if (prLev == 1) {
                    levl.add(level[0]);
                } else if (prLev == 2) {
                    levl.add(level[1]);
                } else if (prLev == 3) {
                    levl.add(level[2]);
                } else {
                    System.out.println("Only press 1 or 2 or 3");
                }

            } else if (priorityChoice == 2) {
                levl.add(level[1]);

            } else {
                System.out.println("Only press 1 or 2");
            }
        }


        System.out.println(userId);
            System.out.println(userDes);
            System.out.println(levl);







        }
    }

