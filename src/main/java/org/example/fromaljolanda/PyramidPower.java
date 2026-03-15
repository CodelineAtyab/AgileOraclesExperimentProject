package org.example.fromaljolanda;

import java.util.Scanner;

public class PyramidPower {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        System.out.print("Enter a Number: ");
        int userChoice = input.nextInt();

        for (int i = 1; i <= userChoice; i++) {
            for (int space = 1; space <= userChoice - i; space++) {
                System.out.print(" ");
            }

            // (2 * i - 2) to print odd number of stars
            for (int star = 1; star <= 2 * i - 1; star++) {
                System.out.print("*");
            }

            System.out.println();
        }
    }
}
