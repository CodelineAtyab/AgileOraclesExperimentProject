package org.example.formabdulmajeed;

import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        boolean mainMenu = true;

        while (mainMenu){
            System.out.println("========THE MAIN MENU==========");
            System.out.println("[1] Customer\n[2] Admin\n[3] Support staff\n[4] Exit");
            int userChoise = input.nextInt();
            if (userChoise== 1){
                System.out.println("Customer oprations:");

            }
            else if (userChoise == 2){
                System.out.println("Admin oprations:");
            }
            else if (userChoise == 3){
                System.out.println("Support staff:");
            }
            else if (userChoise == 4){
                System.out.println("Thank you for visiting");
                mainMenu = false;
            }
            else {
                System.out.println("Sorry this choice is invalid");
            }
    }
}
}
