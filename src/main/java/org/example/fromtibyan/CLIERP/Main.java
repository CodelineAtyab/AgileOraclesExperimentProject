package org.example.fromtibyan.CLIERP;

import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner userInput = new Scanner(System.in);
        boolean running = true;

        while (running){
            System.out.println("######### MAIN MENU #########");
            System.out.println("1.Customer \n2.Admin \n3.Support Staff \n4.Exit");
            System.out.println("#############################");
            int option = userInput.nextInt();

            if (option == 1){
                //customer menu
            }else if (option == 2){
                // admin menu
            }else if (option == 3){
                //support staff menu
            } else if (option == 4) {
                running = false;
            }else {
                System.out.println("Invalid option! please choose a valid option");
            }
        }
    }
}
