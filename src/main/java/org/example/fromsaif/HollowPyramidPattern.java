package org.example.fromsaif;

public class HollowPyramidPattern {
    public static void main(String[] args) {

        int rows = 5;

        for (int row = 1; row <= rows; row++) {
            for (int space = 1; space <= rows-row; space++) {
                System.out.print(" ");
            }
            for (int star = 1; star <= row * 2-1; star++) {
                if (star == 1 || star == row * 2-1 || row == rows) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }

            System.out.println();

        }
    }
}
