package org.example.fromkawther.noai;

public class Advanced {
    public static void main(String[] args) {

        int lines = 5;

        for (int i = 1; i <= lines; i++) {

            for (int s = i; s < lines; s++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= (2 * i - 1); k++) {
                if (k == 1 || k == (2 * i - 1) || i == lines) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}




