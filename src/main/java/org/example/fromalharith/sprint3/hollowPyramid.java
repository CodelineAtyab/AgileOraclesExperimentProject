package org.example.fromalharith.sprint3;

public class hollowPyramid {
    public static void main(String[] args) {

        int n = 5;
        for (int i = 1; i <= n; i++) {
        for (int j = 0; j < n - i; j++) {
            System.out.print(" ");
        }

        if (i == n){
            for (int k = 1; k < n + n; k++) {
                System.out.print("*");
            }
        }
        else {
            System.out.print("*");
        }
        if (i != n && i != 1) {

            for (int l = 1; l < i + i - 2; l++) {
                System.out.print(" ");
            }
            System.out.print("*");
        }
        System.out.println();
    }
}
}
