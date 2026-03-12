package org.example.fromkawther.NoAi;

public class Star {
    public static void main(String[] args) {

        int lines = 5;
        for (int i = 1; i <= lines; i++) {
            for (int j = 1; j <= lines - i; j++) {
                System.out.print(" ");
            }
            for (int s = 1; s <= (2 * i - 1); s++) {

                System.out.print("*");
            }
            System.out.println();

        }
    }
}