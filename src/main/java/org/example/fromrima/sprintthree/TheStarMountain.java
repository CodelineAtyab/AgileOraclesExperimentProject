package org.example.fromrima.sprintthree;

public class TheStarMountain {
    public static void main(String[] args) {
        int line = 5;

        //Outer loop for the rows
        for (int row = 1; row <= line; row++) {

        //loop for the spaces
        for (int space = 1; space <= line - row; space++) {
                System.out.print(" ");
        }
        //loop for the col

        for (int col = 1; col <= row * 2 - 1; col++) {
                System.out.print("*");
        }
            System.out.println();
        }
    }
}
