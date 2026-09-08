package org.example.fromsaif.SPRINT3;

public class TheStarMountain {
    public static void main(String[] args) {

        for (int row = 1; row <= 5; row++) {
            for (int space = 1; space <= 5 - row ; space++) {
                System.out.print(" ");
            }
            for (int star = 1; star <= row * 2 - 1; star++) {
                System.out.print("*");
            }

            System.out.println();
        }
    }
}
