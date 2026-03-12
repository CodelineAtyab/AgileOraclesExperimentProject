package org.example.fromkawther.NoAi;

public class Advanced {
    public static void main(String[] args) {
        int lines = 5;
        for (int i = 1; i <= lines; i++) {
            for (int j = i; j < lines; j++) {
                System.out.print(" ");

            }
            for (int j = 1; j <= (2 * i - 1); j++) {
                if (j == 1 || j == (2 * i - 1) || i == lines) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }

        }
        System.out.println();
    }}}


