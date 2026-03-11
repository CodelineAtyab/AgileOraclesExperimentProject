package org.example.fromaljolanda;

import java.util.Scanner;

public class AdvancedLoopChallenge {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        System.out.print("Enter a Number: ");
        int userChoice = input.nextInt();

        for (int i = 1; i <= userChoice; i++) {
            // print space before pyramid
            for (int space = 1; space <= userChoice - i; space++) {
                System.out.print(" ");
            }

            // print width of pyramid
            // (2 * i - 2) to print odd number of stars in each row
            for (int star = 1; star <= 2 * i - 1; star++) {

                //print star only in:
                //first column     //last column        //last row
                if (star == 1 || star == 2 * i - 1 || i == userChoice) {
                    System.out.print("*");
                }
                else {
                    System.out.print(" ");
                }
            }

            System.out.println();
        }
    }
}
