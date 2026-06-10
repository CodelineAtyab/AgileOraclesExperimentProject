package org.example.fromsaif.SPRINT3;

public class PyramidOfNumbers {
    public static void main(String[] args) {

        for (int row = 1; row <= 4; row++) {
            for (int num1 = 1; num1 <= row; num1++) {
                System.out.print(num1 + " ");
            }
            for (int num2 = row - 1; num2 >= 1; num2--) {
                System.out.print(num2 + " ");
            }
            System.out.println();
        }
    }
}
