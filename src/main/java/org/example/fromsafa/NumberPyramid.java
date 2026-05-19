package org.example.fromsafa;

public class NumberPyramid {

    public static void main(String[] args) {

        int n = 4;

        for (int i = 1; i <= n; i++) {

            // ascending
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }

            // descending
            for (int j = i - 1; j >= 1; j--) {
                System.out.print(j);
            }

            System.out.println();
        }
    }
}
