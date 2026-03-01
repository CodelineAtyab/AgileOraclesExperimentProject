package org.example.fromtibyan.CLIERP;

import java.util.Scanner;

public class AdminMenu {
    public static void main (String[] args){
        Scanner userInput = new Scanner(System.in);
        System.out.println(" \n Please enter password: ");
        int password = userInput.nextInt();
        if (password == 1234){
            System.out.println("Password is correct!");
            System.out.println("##### Welcome to Admin menu #####");
            System.out.println("1.View all complaints");
            System.out.println("2.Search complaint by ID");
            System.out.println("3.Close complaint");
            int adminOption = userInput.nextInt();
            if (adminOption == 1){

            } else if (adminOption == 2) {

            } else if (adminOption == 3) {

            }
        }

    }
}
