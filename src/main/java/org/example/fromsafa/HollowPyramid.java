package org.example.fromsafa;
public class HollowPyramid {

    public static void main(String[] args) {

        int n = 5;

        for (int i = 1; i <= n; i++) {

            // spaces
            for (int s = 1; s <= n - i; s++) {
                System.out.print(" ");
            }

            // stars
            for (int j = 1; j <= (2 * i - 1); j++) {

                if (i == 1) {
                    System.out.print("*");
                }
                else if (i == n) {
                    System.out.print("*");
                }
                else if (j == 1 || j == (2 * i - 1)) {
                    System.out.print("*");
                }
                else {
                    System.out.print(" ");
                }
            }

            System.out.println();
        }
    }
}