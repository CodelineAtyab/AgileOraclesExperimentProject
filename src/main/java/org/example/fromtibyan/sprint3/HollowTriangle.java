package org.example.fromtibyan.sprint3;

public class HollowTriangle {
    public static void main(String[] args) {
        int row = 5;

        for (int i = 1; i <= row; i++) {

            for (int j = 1; j <= row -i ; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= (2 * i) - 1; k++) {
                if (k == 1 || i == row || k == (2 * i) - 1) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}
