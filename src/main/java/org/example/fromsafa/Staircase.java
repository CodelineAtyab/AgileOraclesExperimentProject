package org.example.fromsafa;

public class Staircase {

    public static void main(String[] args) {

        int steps = 5;

        for (int i = 1; i <= steps; i++) {

            for (int j = 1; j <= i; j++) {
                System.out.print("#");
            }

            System.out.println();
        }
    }
}