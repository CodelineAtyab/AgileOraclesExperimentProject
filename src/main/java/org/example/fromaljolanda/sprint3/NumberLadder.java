package org.example.fromaljolanda.sprint3;

import java.util.Scanner;

public class NumberLadder {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        System.out.print("Enter a Number: ");
        int userChoice = input.nextInt();

        for (int i = 1; i <= userChoice; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j + "\t");
            }
            System.out.println();
        }
    }
}